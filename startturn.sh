TURN_LOCATION=./turnserver_conf
docker run -d --name coturn -p3478:3478 \
	-p 3478:3478/udp -p 5349:5349 -p 5349:5349/udp \
	--mount type=bind,source="$TURN_LOCATION",target=/etc/coturn \
	coturn/coturn -c /etc/coturn/turnserver.conf
