# Service health { data-background-video="https://media.tenor.com/videos/ca86f0157e75162f732c43f6adf00297/mp4" data-background-size="contain" data-background-video-loop="true" }

::: notes
The OS cannot see inside the service on how healthy it is.

Therefore the service needs to be instrumented with health check
endpoints that tell the outside world how it is doing.
:::

## Health checks - why?

::: incremental
* load-balancing
* orchestrating
:::

::: notes

Health checks are usually used to determine if traffic can be routed to a 
service or not.

It can be used to add or remove a service endpoint to/from a list of endpoints
that a loadbalancer might use to route traffic.

Another use-case is that a service orchestrator might kill an unhealthy service and
replace it with a new instance.

:::

## Health checks - how?

::: incremental
* Readyness
* Liveness
:::

::: notes
The two use-cases are served by two kinds of checks.
They usually can be served by a single endpoint though.

Readyness probes give feedback to the outside world about
their traffic-serving capability.

It tells the world that the service is ready to receive work.

Readyness probe can also indicate temporary outage that the service might recover from.

Liveness probes are used to indicate whether the service needs to be restarted.
:::

## Node.js libraries {data-background-size="25%" data-background-position="top 10% left 50%" data-background-image="https://upload.wikimedia.org/wikipedia/commons/d/db/Npm-logo.svg"}

* [\@godaddy/terminus](https://www.npmjs.com/package/@godaddy/terminus)
* [\@cloudnative/health](https://www.npmjs.com/package/@cloudnative/health)
* [\@cloudnative/health-connect](https://www.npmjs.com/package/@cloudnative/health-connect)

::: notes
You need a library that exposes a health-check endpoint.

I recommend terminus again.
:::
