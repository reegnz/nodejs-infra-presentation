# Logs

::: notes

Modern platforms all have log-collection built in.

They expect a process to log to standard output and standard error.

They manage timestamps for the logs.


So forget about:
* logging to files
* fancy timestamps
* log rotation

All of these things are usually taken care of by the platform.


Even on linux, journald handles all of this for you, so don't overthink it.
If running on systemd, just log to the standard streams.

If running in a container, just log to the standard streams.

Examples for log collection:
* EFK (Elasticsearch - Fluent bit - Kibana)
* Grafana Loki + promtail
* AWS CloudWatch
:::
