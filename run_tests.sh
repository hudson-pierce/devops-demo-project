#!/bin/bash
set -e

# Step 1: Define variables
help_flag=0
reset_flag=0

# Step 2: Parse command-line arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    --help)
      help_flag=1
      shift
      ;;
    --reset)
      reset_flag=1
      shift
      ;;
    *)
      echo "Invalid option: $1" >&2
      exit 1
      ;;
  esac
done

# Example usage
if [[ $help_flag -eq 1 ]]; then
  echo "Usage: $0 [OPTIONS]"
  echo "Options:"
  echo "  --help      Display this help message"
  echo "  --reset     Perform a reset operation"
  exit 0
fi

if [[ $reset_flag -eq 1 ]]; then
  echo "Performing reset..."
  docker-compose down
fi

# Bring up the Docker containers
docker-compose up -d

# Sleep for 5 seconds to allow the containers to start up
sleep 5

# Navigate to the tests directory
cd tests

# Run the test runner container
docker-compose run --rm test_runner
