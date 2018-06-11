

build:
	docker build -t shadowpc src

run:
	docker run -ti --rm -e DISPLAY=$$DISPLAY -v shadowpc-config:/home/shadowpc/.config -v /tmp/.X11-unix:/tmp/.X11-unix shadowpc

bash:
	docker run -ti --rm -e DISPLAY=$$DISPLAY -v shadowpc-config:/home/shadowpc/.config -v /tmp/.X11-unix:/tmp/.X11-unix shadowpc bash
