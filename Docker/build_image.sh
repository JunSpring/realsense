#! /bin/sh

# We commented out and edit some codes below because we don't have tags yet
# LIBRS_GIT_TAG=`git describe --abbrev=0 --tags`
# LIBRS_VERSION=${LIBRS_GIT_TAG#"v"}
# echo "Building images for librealsense version ${LIBRS_VERSION}"

docker build \
        --target librealsense \
        --build-arg LIBRS_VERSION="2.55.1" \
        --tag librealsense:BFMC \
        .
