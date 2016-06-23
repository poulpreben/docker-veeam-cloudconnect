# docker-veeam-cloudconnect

## Usage
Use the following command to start the container with proper parameters:

    docker run -d \
    -e REST_SERVER="172.21.241.233" \
    -e REST_PORT="7777" \
    -e REST_USER="domain\administrator" \
    -e REST_PASS="Some secret password" \
    poulpreben/docker-veeam-cloudconnect