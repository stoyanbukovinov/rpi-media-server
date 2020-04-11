cmd_all_compose := ${shell set -x; echo find . -name *compose* | xargs echo | sed -e 's/^/-f /'  }

echo:
	@echo ${cmd_all_compose}

config:
	docker-compose ${find . -name '*compose*' | sed -e 's/^/-f /' | xargs echo} config

clear_links:
	find ./*/.env -type l -exec rm {} \;

create_links:
	find ./* -type d -exec ln -s ../.env {}/.env \;

env: clear_links create_links

up: env
	docker-compose ${find . -name '*compose*' | sed -e 's/^/-f /' | xargs echo} up -d

down:
	docker_compose down