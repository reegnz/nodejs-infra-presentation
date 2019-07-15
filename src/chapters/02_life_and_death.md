# Life and Death

of a Linux process


::: notes
Playing nice with the OS is usually about life and death.
Processes are born, and then processes either die on their own,
or are asked to die by the OS.
:::

## Signals

::: incremental
* SIGINT
* SIGHUP
* SIGTERM
* SIGKILL
* etc.
:::

::: notes
The OS asks things from the process with so-called signals.

You can see some common signals here.

What you need to know about this is that the OS might ask your process to terminate. Maybe the host is shutting down, or the user asked the OS to restart the process.

The idea is that the OS will ask nicely first, then wait a while.

This gives the process time to gracefully shut down.
If this graceful shutdown doesn't finish in time, the OS
won't ask nicely anymore.

It will send a SIGKILL, and that kills the process instantly.
:::


## Signal handlers

::: incremental
* SIGHUP, SIGINT, SIGTERM can be handled
* SIGKILL cannot be handled
:::

::: notes
Processes can define handlers for signals, these are callbacks that get called when a certain signal is received.

You can handle signals like SIGHUP, SIGTERM, etc.

SIGKILL cannot be handled.
:::


## OOM Kill

::: incremental
* Don't use more than the available memory.
* If you get OOM-killed: get more memory ¯\\\_(ツ)\_/¯
:::
