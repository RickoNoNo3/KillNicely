# KillNicely

To solve the gracefully shutdown(use SIGINT and/or SIGTERM) triggers problem in Windows.

This is a DLL wrap from [https://blog.codetitans.pl/post/sending-ctrl-c-signal-to-another-application-on-windows/](https://blog.codetitans.pl/post/sending-ctrl-c-signal-to-another-application-on-windows/).

You can call `[KillNicely.Killer]::StopProgram(pid)` to stop a process by simulating an `Ctrl-C` pressing.

WARN: it may not just stop the process which the pid related, but close its own process too. So always start a new process to call and just call it.