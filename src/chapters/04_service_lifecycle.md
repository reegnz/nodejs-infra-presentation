## Lifecycle of a process

## Service startup

::: incremental
* Instance startup
* Prepared to serve requests
* Load balancer recognizes instance
* Load balancer routes requests to instance
:::

::: notes
OK, so this is how a service starts in a modern infra.

Service instances are behind a load balancer.

The load balancer will only route requests to services that are prepared
to accept requests.
We'll talk about how it will know that.

Once the load-balancer recognizes the instance is ready, it will start
sending requests to it.
:::

## Service shutdown

::: incremental
* Instance instructed to shut down
* Instance reports it doesn't accept requests
* LoadBalancer recognizes this
* Instance finishes in-progress requests
* Instance closes connections
* Instance exits
:::

::: notes
Now let's examine what happens when the service needs to be shut down.

This could be because of host maintenance, or scaling down to less instances, or maybe a newer version is rolled out and the old ones are shut down.

This is a graceful shutdown. The OS notifies the process to please shut down.

The process won't accept any new requests, and finishes in-progress requests.
It closes open connections and shuts down.

The loadbalancer is also instructed not to send any more requests once the shutdown starts.
:::

## Service failure

::: incremental
* Instance reports health issue
* LoadBalancer recognizes this
* After grace period OS asks process to shut down
* Instance closes connections
* Instance exits
:::

::: notes
The last example we will examine is what happens if the service itself fails
either temporarily or permanently.

It needs to communicate this to the outside world, so it can react to this.
The LoadBalancer recognizes the health issue, and won't route requests until the service recovers.

If the service doesn't recover, the OS will request the service to shut down, and will possibly try to start a new instance in it's place.

:::

## Health

* Only services that are ready should receive requests
* Only services that are live should receie requests
* Services that aren't live should be terminated

::: notes
Ok, so this is coming from the Kubernetes world, not going to lie about that.

But the concepts are useful at other places as well, since this is a
possible mechanism for improving service availability.
:::


