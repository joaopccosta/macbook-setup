USER := "default"
PIHOLE_IP_ADDR := "192.168.1.84"
PI_USR := "pi"
NPM_TOKEN="default"

all: start core opt

start:
	sh start.sh ${USER}

core:
	sh core.sh

opt:
	sh opt.sh ${PIHOLE_IP_ADDR} ${PI_USR}

work:
	sh work.sh ${NPM_TOKEN}
