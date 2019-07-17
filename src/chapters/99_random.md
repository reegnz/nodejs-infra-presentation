# Infra friendly Node.JS is...

## Secure

::: notes
In a nutshell this means you will not run well-known security issues
in production.
:::

## npm audit

::: incremental
* run on PR-s
* run in CI
* run periodically
:::

::: notes
Keep your eye out for security flaws.
Prevent known security issues entering your codebase.
That means PR and CI builds should catch security issues.

But running these audit scans only on changes made is not enough.

Even if a codebase is not touched for months, security flaws are uncovered
constantly.

What you thought to be secure yesterday might have a well-known and publicly
disclosed vulnerability tomorrow.

So you also need to be alerted when your live system is succeptible to a 
security vulnerability.
:::

## npm ci

::: incremental
* package-lock.json
* reproducible dependencies
* faster resolution
:::

::: notes

Use it instead of npm install, npm install is overused.
Not just in CI. It also has major advantages locally.

First, it catches out-of-sync package-lock.json.
If you manually edited dependencies package.json, and didn't run npm install 
after, this will scream in your face.

Second, it allows for reproducible builds.
Yarn did this before npm, but who needs yarn when you got this in npm now.

Third, it's much faster. It doesn't go to the npm api to ask what the newest
versions are. It just looks at all the url-s in your package-lock.json and
downloads all of them.

This produces much faster dependency installs. Dramatically faster.
:::

## npm outdated

::: incremental
* keep dependencies up-to-date
* use with npm update
:::

::: notes
This one is just convenience. It gives you a single tool for checking what
dependencies you need to upgrade.

You can then use npm update to update the dependencies that can be updated
automatically.
:::
