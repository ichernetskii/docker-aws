start-production:
	docker-compose -f docker-compose.yml up -d --build
stop-production:
	docker-compose -f docker-compose.yml down
