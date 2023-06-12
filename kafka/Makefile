.PHONY: all
all: config up

.PHONY: up
up:
	docker compose up -d

.PHONY: start
start:
	docker compose up

.PHONY: down
down:
	docker compose down

.PHONY: clean
clean:
	rm -rf tmp
