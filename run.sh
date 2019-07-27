
user_id_real=$(id -u)
max_uid_count=65536
max_minus_uid=$((max_uid_count - user_id_real))
uid_plus_one=$((user_id_real + 1))

#--userns=keep-id 

#podman run --rm --privileged  --volume "/mnt/BUILDDATA/yocto/warrior-crops-work:/workdir" -ti ry-poky   --workdir=/workdir 

PODMAN_VERSION="$(podman --version | awk '{print $3}' | cut -d - -f1)"

#echo $PODMAN_VERSION

#podman run --rm --privileged  -uidmap "$user_id_real":0:1  --uidmap 0:1:"$user_id_real" --uidmap "$uid_plus_one":"$uid_plus_one":"$max_minus_uid"  --volume "/mnt/BUILDDATA/yocto/warrior-crops-work:/workdir" -ti ry-poky   --workdir=/workdir 

#--cmd chown -R 1000:1000 /workdir

#podman run --rm --volume /mnt/BUILDDATA/yocto/warrior-crops:/workdir    -it ry-poky  --workdir=/workdir

#podman run --rm -it -v /mnt/BUILDDATA/yocto/warrior-crops:/workdir localhost/ry-poky --workdir=/workdir
