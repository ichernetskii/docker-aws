start-production:
	docker-compose -f docker-compose.yml up -d --build
stop-production:
	docker-compose -f docker-compose.yml down; \
	docker volume prune --all --force --filter "label!=dont-delete";
