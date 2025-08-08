#!/bin/bash

nb_gpu=$(lspci | grep -i 'vga\|3d\|display' | wc -l)

pod=""

if [ "$nb_gpu" -eq 1 ]; then
    pod="pod_rocm"
    elif [ "$nb_gpu" -eq 2 ]; then
    pod="pod_cuda"
else
    echo "NO GPU detected"
    exit 0
fi

echo "Starting $pod"
podman pod start $pod
echo "$pod" > /run/user/$UID/ollama_pod_started
