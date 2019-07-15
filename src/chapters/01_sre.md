# Site Reliability Engineering[^sre]

[^sre]: [Site Reliability Engineering](https://landing.google.com/sre/books)

:::notes
Now this is an actual Job description!
Easy to confuse with DevOps, except that DevOps doesn't have a clear
definition.

Who knows what DevOps is?
Nope, you don't. Nobody does.
Everyone has a different definition.

SRE is easy to define.
:::

## Definition

SRE is "what happens when a software engineer is tasked with what used to be called operations."

. . .

According to Ben Taylor, founder of Google's SRE Team.

:::notes
See? Try giving such a simple definition to DevOps.

No mumbo jumbo about developers and operations sitting down and singing kumbajah.

No enterprise-y bullshit about peace between developers and system administrators.

This is all-out war.
Developers will automate that shit, no need for manual script-editing on the prod host.

:::

## Tools of the Trade

::: incremental
* Terraform
* Kubernetes
* Golang (optional, but you'll end up reading go code anyways)
* Bash (or ZSH)
:::

::: notes
OK, so what does an SRE use in their day-to-day life?

First, you have a cloud infrastructure, so automate that.

Terraform is a great tool for automating cloud-provider setup.

Next, you want a platform for Declarative Application Management.

Kubernetes is the best solution providing that.

Next, you need a language to automate all of these things in.

Golang is not the best, but a tremendous ammount of know-how has been
poured into go projects regarding terraform and kubernetes, so you will
read a lot of go code even if you don't automate things in go.

And of course you gotta love the bash.
I am more of a ZSH guy here, but either way, you need to step into the light
and embrace the hacker culture.
:::
