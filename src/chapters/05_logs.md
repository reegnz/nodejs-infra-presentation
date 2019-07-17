# Logs

## Log collection

::: incremental
* EFK (Elasticsearch - Fluent bit - Kibana)
* Grafana Loki + promtail
* AWS CloudWatch
* systemd + journald
:::

::: notes
Modern platforms all have log-collection built in.

These platforms take a lot of the burden of logging from your hand
and hand it to the guys operating the log collection solution.
:::

## Log files

::: incremental
* forget about it
* use standard streams
* Info to stdout
* Error to stderr
:::

::: notes
Log files are a thing of the past.

Modern platforms collect straight from the standard streams.

But Zoli, I am not using Kubernetes or AWS or any cloud solution!

Well, systemd already redirects standard streams to journald, so 
you should use that instead of reinventing the wheel.
:::


## Log timestamps

::: incremental
* time zone representation issues
* leave it to the collector
:::

::: notes
Now this is a more controversial one, but I stand by it.

If you log, don't log timestamps.
The log-collector will apply those for you.

Time zones -> log collector formats the timestams to anyones local timezone.

Why would you want to deal with time zones in your logger?
:::

## Log rotation

::: incremental
* just forget about it
* not your problem
* just enjoy life
:::

::: notes
Don't beat up yourself about managing log files and rotating them, stressing about disk, etc.

Configure the log collection system once and be done with it.
:::
