
#podman build  -t ry-poky   .
#docker --env HTTP_PROXY="http://192.168.133.1:3128" --env HTTPS_PROXY="http://192.168.133.1:3128" build --volume "/home/ry/git_yocto/rnd-poky:/workdir" -t ry-poky   .


#docker build -f Dockerfile_fedora --volume "/home/ry/git_yocto/rnd-poky:/workdir" -t ry-poky-crops-fedora30 .  

docker  build  --volume "/home/ry/git_yocto/rnd-poky:/workdir" -t ry-crops-fedora30   .

