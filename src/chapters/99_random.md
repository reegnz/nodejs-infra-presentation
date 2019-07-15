# Random Node.js best practices

# npm ci

* use it instead of npm install
* uses package-lock.json
* much faster
* "reproducible" - sort-of

# npm ci (contd)

* use npm ci --development for build
* use npm ci --production for prod dependencies
* don't package dev dependencies for prod

# npm outdated

* keep your dependencies up-to-date
* npm outdated tells you what's outdated
* npm update updates outdated dependencies

# npm audit

* keep your eye out for security flaws
* it's not enough to run it on each commit
* security flaws are uncovered even if you don't modify anything
* cron-based CI build

