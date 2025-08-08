#!/bin/bash

if [ -f /run/user/$UID/ollama_pod_started ]; then
    pod=$(cat /run/user/$UID/ollama_pod_started)
    echo "Stopping $pod"
    podman pod stop "$pod"
    rm -f /run/user/$UID/ollama_pod_started
fi

