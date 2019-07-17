#! /bin/sh -e
pandoc --standalone --to revealjs --slide-level=2 -o dist/index.html src/config.yaml src/chapters/00_introduction.md src/chapters/01_npm.md src/chapters/02_os.md src/chapters/04_health.md src/chapters/04_service_lifecycle.md src/chapters/05_logs.md src/chapters/06_http_proxies.md src/chapters/99_sre.md
