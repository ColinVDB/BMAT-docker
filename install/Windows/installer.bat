echo off

docker pull colinvdb/bmat:0.1.0

echo \
"xhost +

WD="$(pwd)"

docker run -it -e DISPLAY=\$DISPLAY -e XDG_RUNTIME_DIR=\$XDG_RUNTIME_DIR -v /tmp/.X11-unix/:/tmp/.X11-unix --net=host --privileged -v /var/run/docker.sock:/var/run/docker.sock -v \$WD/lib/sequences.csv:/programs/BMAT_docker/BMAT/sequences.csv:ro -v \$WD/lib/license.txt:/programs/freesurfer/license.txt:ro -v \$WD/Pipelines:/programs/BMAT_docker/BMAT/NewPipelines:ro -v /media:/media -v /home:/home colinvdb/bmat:0.1.0

xhost -" > launcher.sh
