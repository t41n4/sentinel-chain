#!/bin/bash

# Script to start all services in separate terminals

# Function to start Cloudflared Tunnel
start_tunnel() {
    echo "Starting Cloudflared Tunnel..."
    gnome-terminal -- bash -c "cloudflared tunnel run sentinel; exec bash"
    echo "Cloudflared Tunnel started."
}

# Function to start Alice and Bob nodes
start_nodes() {
    echo "Starting Alice Node..."
    gnome-terminal -- bash -c "cd ~/sentinel-chain && ./start-alice.sh; exec bash"

    echo "Starting Bob Node..."
    gnome-terminal -- bash -c "cd ~/sentinel-chain && ./start-bob.sh; exec bash"

    echo "Alice and Bob nodes started."
}

# Function to start Prometheus Server
start_prometheus() {
    echo "Starting Prometheus Server..."
    gnome-terminal -- bash -c "cd ~/prometheus-2.52.0.linux-amd64 && ./prometheus; exec bash"
    echo "Prometheus Server started."
}

# Start all services
start_tunnel
start_nodes
start_prometheus

echo "All services started."
