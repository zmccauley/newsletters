default:
    @echo "Available commands:"
    @echo "  just up                - Start all services in detached mode"
    @echo "  just shell {{service}} - Open a bash shell in the specified service"
    @echo "  just manage {{*args}}  - Run a manage.py command with the specified arguments in the api service"

up:
    docker compose up -d

shell service:
    docker compose exec {{service}} bash

manage *args:
    docker compose exec api python manage.py {{args}}