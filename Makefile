all:
	docker-compose build && docker-compose up -d

clean:
	docker-compose down --rmi all

# All containers remove
# $ docker system prune
