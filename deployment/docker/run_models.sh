#!/bin/bash

ollama serve &

echo "Wait for ollama app to be running"
sleep 20

echo "Ollama is ready, starting the model..."
ollama pull mistral
ollama pull nomic-embed-text
ollama run mistral
