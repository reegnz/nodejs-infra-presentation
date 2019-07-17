# About me

::: incremental
* ~13 years in IT
* ~8 years a professional
* ~7 years Java
* ~5 years Linux
* ~3 years Docker
* ~2 years Ansible
* ~2 years Kubernetes
* ~2 years Node.js
* ~1 year TypeScript
:::

:::notes
First, some words about me.

I've been neck deep in IT for about 13 years now (including University)

I'm not a wunderkind, but I've learned passion for my craft

I've been making money with my knowledge for about 8 years

I've worked with several technologies, here are some of the more relevant ones


Currently I work in a position that matches
the Site Reliability Engineer (SRE) description.

Clearly I'm not an authority on nodejs, but node.js is not that hard to 
pick up, don't kid yourselves.
:::

# Infra Friendly { text-align="left" data-background-size="40%" data-background-position="bottom 10% right 50%" data-background="https://nodejs.org/static/images/logos/nodejs-new-pantone-white.png" }


:::notes
What does this mean?

Quick summary of what's coming
:::

## Keep things secure

::: incremental


::: notes
Update your dependencies regularly.
Don't allow known flaws
:::


## Respect the Proxy

::: incremental
* CORS
* AuthN
* Firewall
:::

::: notes
Don't handle CORS in your node app.
Don't handle authentication (only) in your node app.

helmet.js
:::

## Respect the OS

::: incremental
* health checks
* graceful termination
:::

:::notes

Dear process:
If OS asks about your health you tell them.
The OS hates it if it cannot tell if someone is healthy or not.

Also if the os asks you to die, you f*ing die.
Otherwise the OS will kill you.
:::

## Dumb logging

::: incremental
* no log files
* no log rotation
* no timestamps
* Info to stdout
* Error to stderr
:::

:::notes
* Don't overthink logging.
* Don't log to files.
* You don't need to care about fancy timestamps
* Log info to standard output.
* Log error to standard error.
* Simple as that.

But but but... those are important!

Yes they are.
Also, those are not your concern if you are developing a Node.js service.
:::
