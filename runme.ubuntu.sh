docker run -it \
    --volume /tmp/.X11-unix:/tmp/.X11-unix:ro \
    --volume /run/user/$(id -u)/pulse:/run/pulse:ro \
    --volume /dev/video0:/dev/video0:rw \
    --volume /dev/dri:/dev/dri:rw \
    --privileged \
    -e DISPLAY=$DISPLAY \
    --name darkestdungeon.ubuntu \
    darkestdungeon:2.4.0.4-ubuntu
