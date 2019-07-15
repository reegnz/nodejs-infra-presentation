# Service health

::: notes
The OS cannot see inside the service on how healthy it is.

Therefore the service needs to be instrumented with health check
endpoints that tell the outside world how it is doing.
:::

## Health checks

::: incremental
* Readyness
* Liveness
:::

::: notes
Health checks, also called probes, come in two flavours, but can usually be
served by the same check.

Readyness probes are used on service startup. They give feedback to the outside 
world whether the service has initialized and can perform it's duty.
Readyness probe can also indicate temporary outage that the service might recover from.

Liveness probes are used to indicate whether the service needs to be restarted.
:::

## What to do in Node.js

::: incremental

* Your service needs a health-check endpoint
* graceful shutdown on unix signals
* You can use [godaddy/terminus](https://github.com/godaddy/terminus)
:::
