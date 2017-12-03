clean_docker () {

    docker run \
        --rm \
        --volume /var/run/docker.sock:/var/run/docker.sock \
        --volume /etc:/etc:ro \
        spotify/docker-gc

    docker stop $(docker ps -a -q)
    docker rm --force $(docker ps -a -q)
    docker rmi --force $(docker images -q)
}
