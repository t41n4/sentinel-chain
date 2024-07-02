#!/bin/bash

# Script to start node Alice and Bob in separate terminals

echo "Starting Alice Node..."
gnome-terminal -- bash -c "cd ~/sentinel-chain && ./start-alice.sh; exec bash"

echo "Starting Bob Node..."
gnome-terminal -- bash -c "cd ~/sentinel-chain && ./start-bob.sh; exec bash"
