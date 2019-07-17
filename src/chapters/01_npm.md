# Infra friendly Node.JS is...

## Secure {data-background-color="black" data-background-iframe="https://giphy.com/embed/lo5HLcAPFSgTZNTpAn" .giphy-embed}

::: notes
In a nutshell this means you will not run well-known security issues
in production.
:::

## npm audit {data-background-size="25%" data-background-position="top 10% left 50%" data-background-image="https://upload.wikimedia.org/wikipedia/commons/d/db/Npm-logo.svg"}

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

## npm ci {data-background-size="25%" data-background-position="top 10% left 50%" data-background-image="https://upload.wikimedia.org/wikipedia/commons/d/db/Npm-logo.svg"}

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

## npm outdated {data-background-size="25%" data-background-position="top 10% left 50%" data-background-image="https://upload.wikimedia.org/wikipedia/commons/d/db/Npm-logo.svg"}

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

## ESLint {data-background-image="https://eslint.org/assets/img/logo.svg"}
::: incremental
* it catches bugs
* it catches soon-to-be bugs
:::

::: notes
Static analysis rocks!

If you think tests are not important, or futile, at least use static analysis.
It's proven to work.

It's like riding a tricicle all the time.

It's the single best thing you can do to your project that will make your code
quality skyrocket without tests.

:::

## { data-background-position="top 10% right 50%" data-background-size="50%" data-background-image="https://www.typescriptlang.org/assets/images/logo_nocircle.svg" data-background-color="#294E80"}

::: incremental
* it catches bugs
* it helps with complexity
* more robust code
:::

::: notes
:::
