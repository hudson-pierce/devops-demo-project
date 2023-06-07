# DevOps Demo Project

## Run Website using Docker Compose
```
docker compose up website -d
```

You can access the website at http://localhost.

## Run Selenium Tests
The tests run inside a Docker container. You can inspect the [docker-compose.yaml](./docker-compose.yaml) file for more details.

To run the tests execute this command:
```
bash run_tests.sh
```

You can see the tests running in the browser inside the container by visiting: http://localhost:7900. The password is `secret`.

## Cleaning up Docker Resources
To clean up all the Docker resources you can run the [reset_docker.sh](./reset_docker.sh) script, but WARNING this will delete all Docker images and containers from your system.

```
bash reset_docker.sh
```
