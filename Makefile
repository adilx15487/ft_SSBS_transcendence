# ================================
# SSBS - Smart School Bus System
# Makefile
# ================================

.PHONY: help build up down restart logs clean frontend backend db

# Default target
help:
	@echo "╔════════════════════════════════════════════════════════════╗"
	@echo "║           SSBS - Smart School Bus System                  ║"
	@echo "╠════════════════════════════════════════════════════════════╣"
	@echo "║  make build     - Build all containers                    ║"
	@echo "║  make up        - Start all services                      ║"
	@echo "║  make down      - Stop all services                       ║"
	@echo "║  make restart   - Restart all services                    ║"
	@echo "║  make logs      - View all logs                           ║"
	@echo "║  make clean     - Remove containers, volumes, images      ║"
	@echo "║  make frontend  - View frontend logs                      ║"
	@echo "║  make backend   - View backend logs                       ║"
	@echo "║  make db        - Access database shell                   ║"
	@echo "║  make shell-fe  - Shell into frontend container           ║"
	@echo "║  make shell-be  - Shell into backend container            ║"
	@echo "╚════════════════════════════════════════════════════════════╝"

# Build containers
build:
	docker-compose build

# Start services
up:
	docker-compose up -d

# Start services with build
up-build:
	docker-compose up -d --build

# Stop services
down:
	docker-compose down

# Restart services
restart:
	docker-compose restart

# View all logs
logs:
	docker-compose logs -f

# View frontend logs
frontend:
	docker-compose logs -f frontend

# View backend logs
backend:
	docker-compose logs -f backend

# Access database shell
db:
	docker-compose exec postgres psql -U ssbs_user -d ssbs_db

# Shell into frontend container
shell-fe:
	docker-compose exec frontend sh

# Shell into backend container
shell-be:
	docker-compose exec backend sh

# Clean everything
clean:
	docker-compose down -v --rmi all --remove-orphans

# Prune system
prune:
	docker system prune -af
