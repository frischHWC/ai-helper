export DOMAIN_NAME="$(hostname -f)"
export K8S_TYPE="rancher"
export NAMESPACE="ai-helper"
export KUBECONFIG_FILE="./kubeconfig"
export NODE_TO_RUN_COMMANDS="localhost"
export NODE_TO_RUN_COMMANDS_USER="$(whoami)"
export DESTROY_PREVIOUS="true"
export ANSIBLE_PYTHON_3_PARAMS=""
export PYTHON3_PATH="/usr/bin/python"
export INSTALL_PYTHON="false"
export GPU_ENABLED="false"
export HELM_BIN_PATH="/usr/local/bin/helm"
export T_SHIRT_SIZE="S"
export HF_TOKEN=""
export DEBUG="false"
export SCHEDULER_NAME="default-scheduler"


function usage()
{
    echo "This script aims to deploy ai-helper to a kubernetes cluster"
    echo ""
    echo "Usage is the following : "
    echo ""
    echo "./deploy-to-k8s.sh"
    echo "  -h --help"
    echo "  --kubeconfig-file=$KUBECONFIG_FILE Required as it will need it to access kubernetes cluster  "
    echo "  --domain-name=$DOMAIN_NAME Required as it will create ingresses with it  "
    echo "  --namespace=$NAMESPACE Required as it will create all objects in that namespace  "
    echo ""
    echo "  --debug=$DEBUG To enable debug or not "
    echo "  --k8s-type=$K8S_TYPE Provide type of kubernetes  "
    echo "  --node-to-run-commands=$NODE_TO_RUN_COMMANDS Where to run helm/k8s commands  "
    echo "  --node-to-run-commands-user=$NODE_TO_RUN_COMMANDS_USER User to connect to node Where to run helm/k8s commands  "
    echo "  --destroy-previous=$DESTROY_PREVIOUS Whether to destroy existing previous deployment  "
    echo "  --python-path=$PYTHON3_PATH Path to python 3 that has required packages installed on node that will run commands  "
    echo "  --install-python=$INSTALL_PYTHON To install python 3.11 on remote controller with required packages and so use it to launch ansible commands  "
    echo "  --gpu-enabled=$GPU_ENABLED To set GPU or not  "
    echo "  --helm-bin-path=$HELM_BIN_PATH To override helm bin path  "
    echo "  --t-shirt-size=$T_SHIRT_SIZE To set the default size of the deployment among: XS, S, M, L, XL  "
    echo "  --hf-token=$HF_TOKEN To be able to download HF models  "
    echo "  --scheduler-name=$SCHEDULER_NAME To change the kubernetes scheduler "
    echo ""
}


export API_KEY=$(echo $@ | sed 's/--[^ ]*//g')
API_KEY=$(echo $API_KEY | sed 's/ *$//g')

while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    VALUE=`echo $1 | awk -F= '{print $2}'`
    case $PARAM in
        -h | --help)
            usage
            exit
            ;;
        --debug)
            DEBUG=$VALUE
            ;;
        --kubeconfig-file)
            KUBECONFIG_FILE=$VALUE
            ;;
        --domain-name)
            DOMAIN_NAME=$VALUE
            ;;
        --namespace)
            NAMESPACE=$VALUE
            ;;
        --k8s-type)
            K8S_TYPE=$VALUE
            ;;
        --node-to-run-commands)
            NODE_TO_RUN_COMMANDS=$VALUE
            ;;
        --node-to-run-commands-user)
            NODE_TO_RUN_COMMANDS_USER=$VALUE
            ;;
        --destroy-previous)
            DESTROY_PREVIOUS=$VALUE
            ;;
        --python-path)
            PYTHON3_PATH=$VALUE
            ;;
        --install-python)
            INSTALL_PYTHON=$VALUE
            ;;
        --gpu-enabled)
            GPU_ENABLED=$VALUE
            ;;
        --helm-bin-path)
            HELM_BIN_PATH=$VALUE
            ;;
        --t-shirt-size)
            T_SHIRT_SIZE=$VALUE
            ;;
        --hf-token)
            HF_TOKEN=$VALUE
            ;; 
        --scheduler-name)
            SCHEDULER_NAME=$VALUE
            ;;  

        *)
            ;;
    esac
    shift
done

# For local kubernetes auth
export K8S_AUTH_KUBECONFIG=$KUBECONFIG_FILE

# Load logger
. ./logger.sh

# Load sizing
. ./t_shirt_size.sh
case $T_SHIRT_SIZE in
    XS)
        apply_XS
        ;;
    S)
        apply_S
        ;;
    M)
        apply_M
        ;;
    L)
        apply_L
        ;;
    XL)
        apply_XL
        ;;
    *)
    ;;
esac

logger info "Starting deploy to kubernetes"
print_env_vars

# 1. template values with envsubst to extra_vars.yml 
envsubst < ansible/extra-vars-template.yml > /tmp/extra-vars-template.yml.tmp && mv /tmp/extra-vars-template.yml.tmp /tmp/extra_vars.yml
envsubst < ansible/hosts > /tmp/hosts.tmp && mv /tmp/hosts.tmp /tmp/hosts
echo "ansible_user=${NODE_TO_RUN_COMMANDS_USER}" >> /tmp/hosts

if [ -n ${PYTHON3_PATH} ] ; then
    export ANSIBLE_PYTHON_3_PARAMS="-e ansible_python_interpreter=${PYTHON3_PATH}"
fi

if [ "${NODE_TO_RUN_COMMANDS}" = "localhost" ] ; then
    export LOCAL_CONNECTION="--connection=local"
fi

# 2. Install pre-requisites if needed
if [ "${INSTALL_PYTHON}" = "true" ] ; then
    logger info " Launching command:"
    logger info "  ansible-playbook -i /tmp/hosts --extra-vars @/tmp/extra_vars.yml ansible/prereqs.yaml"
    ansible-playbook -i /tmp/hosts --extra-vars @/tmp/extra_vars.yml ansible/prereqs.yaml
fi

logger info "Install ansible collections locally"
ansible-galaxy collection install kubernetes.core

# 3. Launch ansible playbooks to install the different helm
logger info " Launching command:"
logger info "  ansible-playbook -i /tmp/hosts --extra-vars @/tmp/extra_vars.yml ansible/install-ai-helper.yml ${ANSIBLE_PYTHON_3_PARAMS} ${LOCAL_CONNECTION}" 
ansible-playbook -i /tmp/hosts --extra-vars @/tmp/extra_vars.yml ansible/install-ai-helper.yml ${ANSIBLE_PYTHON_3_PARAMS} ${LOCAL_CONNECTION}

logger info "Finished to deploy to kubernetes"

