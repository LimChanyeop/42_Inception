SRC_DIR = ./srcs
COMPOSE = docker-compose
YML = docker-compose.yml
RUN_COM = $(COMPOSE) -f $(SRC_DIR)/$(YML)

all: up

up:
	$(RUN_COM) up -d

build:
	$(RUN_COM) build

restart:
	$(RUN_COM) restart

ps:
	$(RUN_COM) ps

port:
	$(RUN_COM) port

down:
	$(RUN_COM) down

down_rmi:
	$(RUN_COM) down --rmi all

clear:
	sh $(SRC_DIR)/requirements/tools/clear.sh

vb_setting:
	sh $(SRC_DIR)/requirements/tools/set_up.sh