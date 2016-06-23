# docker-veeam-cloudconnect

## Usage
Use the following command to start the container:

    docker run -d -t -i -p 8080:80 \
		-e REST_SERVER="10.0.4.71" \
		-e REST_PORT="9399" \
		-e REST_USER="Administrator" \
		-e REST_PASS="very secret password" \
		-e BACKUP_SERVER="backup.example.com" \
		-e BACKUP_REPOSITORY="storage2" \
		-e HARDWARE_PLAN="gold-plan" \
		--name veeam-rest \
		poulpreben/docker-veeam-cloudconnect