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

# Infra Friendly

tl;dr

:::notes
What does this mean?

Quick summary of what's coming
:::

## Respect the OS

::: incremental
* OS asks about your health -> you tell them
* OS asks you to terminate -> you finish your job and die
* Don't let the OS go full psycho
:::

:::notes
The OS hates it if it cannot tell if someone is healthy or not.
They might be sick and still occupy resources other processes need.

OS likes it if it doesn't have to kill children.

OS hates it if it has to kill anybody, so first it asks them to commit suicide of their entire family.

If the process doesn't commit familicide, the OS gets pissed.
If the OS is pissed it will kill you no matter what.
:::

## No duplication of functionality

::: incremental
* Forget about CORS
* Forget about AuthN
* Let the proxies do their thing
:::

## No complicated logging

::: incremental
* Info to stdout
* Error to stderr
* Forget about log files
:::

:::notes

* Log info to standard output.
* Log error to standard error
:::
