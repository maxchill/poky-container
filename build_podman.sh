
#podman build  -t ry-poky   .
#-t ry-crops-fedora30

podman build -f Dockerfile_fedora --volume "/home/ry/git_yocto/rnd-poky:/workdir"   -t ry-crops-fedora30   .
#podman build  --volume "/home/ry/git_yocto/rnd-poky:/workdir"   -t ry-poky   .
