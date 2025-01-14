#! /bin/sh

# By using --device-cgroup-rule flag we grant the docker continer permissions -
# to the camera and usb endpoints of the machine.
# It also mounts the /dev directory of the host platform on the contianer 
# and shares the current directory with the container.

docker run -it --rm \
    -v /dev:/dev \
    -v "$(pwd):/workspace" \
    --device-cgroup-rule "c 81:* rmw" \
    --device-cgroup-rule "c 189:* rmw" \
    -w /workspace \
    librealsense:BFMC
