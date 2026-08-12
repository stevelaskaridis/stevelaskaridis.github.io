#!/bin/sh
set -e

IMAGE_NAME="stevelaskaridis-site"
CONTAINER_NAME="stevelaskaridis-site-dev"
PORT="${PORT:-4001}"

usage() {
  echo "Usage: $0 {start|stop|restart}"
  echo
  echo "  start    Build the image and run the site in a background container (http://localhost:${PORT})"
  echo "  stop     Stop and remove the running container"
  echo "  restart  stop, then start"
  echo
  echo "Override the port with PORT=xxxx $0 start"
  exit 1
}

start() {
  docker build -t "$IMAGE_NAME" .
  docker run -d --rm --name "$CONTAINER_NAME" -p "${PORT}:4000" "$IMAGE_NAME" >/dev/null
  echo "Site starting at http://localhost:${PORT} (container: ${CONTAINER_NAME})"
}

stop() {
  if docker ps -q --filter "name=^${CONTAINER_NAME}\$" | grep -q .; then
    docker rm -f "$CONTAINER_NAME" >/dev/null
    echo "Stopped and removed ${CONTAINER_NAME}"
  else
    echo "No running container named ${CONTAINER_NAME}"
  fi
}

case "$1" in
  start)   start ;;
  stop)    stop ;;
  restart) stop; start ;;
  *)       usage ;;
esac
