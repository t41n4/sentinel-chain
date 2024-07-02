#!/bin/bash

# Script to stop all services

# Function to stop Cloudflared Tunnel
stop_tunnel() {
    echo "Stopping Cloudflared Tunnel..."
    pkill -f "cloudflared tunnel run sentinel"
    echo "Cloudflared Tunnel stopped."
}

# Function to stop Alice and Bob nodes
stop_nodes() {
    echo "Stopping Alice Node..."
    pkill -f "cd ~/sentinel-chain && ./start-alice.sh"
    
    echo "Stopping Bob Node..."
    pkill -f "cd ~/sentinel-chain && ./start-bob.sh"
    
    echo "Alice and Bob nodes stopped."
}

# Function to stop Prometheus Server
stop_prometheus() {
    echo "Stopping Prometheus Server..."
    pkill -f "cd ~/prometheus-2.52.0.linux-amd64 && ./prometheus"
    echo "Prometheus Server stopped."
}

# Stop all services
stop_tunnel
stop_nodes
stop_prometheus

echo "All services stopped."
