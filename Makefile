docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build --pull

frontend-clear:
	docker run --rm -v ${PWD}/frontend:/app -w /app alpine sh -c 'rm -rf build'

frontend-init: frontend-yarn-install

frontend-yarn-install:
	docker-compose run --rm frontend-node-cli yarn install

eslint:
	docker-compose run --rm frontend-node-cli npx eslint --init

webpack-install:
	docker-compose run --rm frontend-node-cli yarn add webpack --dev

typescript-install:
	docker-compose run --rm frontend-node-cli yarn add typescript --dev

laravel-mix-install:
	docker-compose run --rm frontend-node-cli yarn add laravel-mix --dev

bootstrap-install:
	docker-compose run --rm frontend-node-cli yarn add bootstrap --dev

mix:
	docker-compose run --rm frontend-node-cli npx mix

npm-run-dev:
	docker-compose run --rm frontend-node-cli npm run dev