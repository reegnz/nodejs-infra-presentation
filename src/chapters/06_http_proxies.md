# HTTP Proxies

## { data-background-color="white" data-background-size="75%" data-background="https://www.cloudflare.com/img/learning/cdn/glossary/reverse-proxy/forward-proxy-flow.svg" }

::: notes
Here the internet is on the egress part.
Traffic goes through the proxy before reaching the internet.
:::

## { data-background-color="white" data-background-size="75%" data-background="https://www.cloudflare.com/img/learning/cdn/glossary/reverse-proxy/reverse-proxy-flow.svg" } 

::: notes
Here the internet is on the ingress part.
Traffic coming from the internet goes through the proxy.
:::

## 

[Cloudflare Glossary on Reverse Proxies](https://www.cloudflare.com/learning/cdn/glossary/reverse-proxy/)

## Proxies for Security

::: incremental
* TLS (HTTPS)
* Authentication
* Traffic Logging
* CORS
* Application Firewall
* Policy enforcement
:::

## Proxies for Robustness

::: incremental
* Load Balancing
* Caching
* Compression
* Request Retries
* Short-Circuiting
* Canary Deployments
:::

## Node.js

::: notes

Always think about your infrastructure.

Is what you're doing an orthogonal concern?

Does it look like the same for every service?

Then it might be a proxy use-case!

No need to accumulate additional dependencies in each service.

Just put it in a proxy in front of all your services.

The concern shifts from all services to a group of proxies with the
exact same config and lifecycle.
:::
