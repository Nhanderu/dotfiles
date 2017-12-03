clean_docker () {

    docker run \
        --rm \
        --volume /var/run/docker.sock:/var/run/docker.sock \
        --volume /etc:/etc:ro \
        spotify/docker-gc

    containers=$(docker ps -a -q)
    if [[ "$containers" != "" ]]; then
        docker stop $containers
        docker rm --force $containers
    fi
    unset containers

    images=$(docker images -q)
    if [[ "$images" != "" ]]; then
        docker rmi --force $images
    fi
    unset images

}
