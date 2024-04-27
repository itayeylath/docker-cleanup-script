# Check if there are any containers
if docker ps -a &> /dev/null; then
    echo "Removing existing containers..."
    # Remove all containers
    docker rm -f $(docker ps -a -q)
    # Restart Docker
    echo "Restarting Docker..."
    sudo systemctl restart docker
    # Print Docker status
    echo "Docker status:"
    sudo systemctl status docker | grep "Active:"
else
    echo "No containers to remove."
fi
