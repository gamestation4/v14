# Fireball PS4 14.00

Local WebKit host for PS4 firmware 14.00. Loads hen.bin after userland + kernel stages.

## Run
Serve the `host` folder over HTTP on your LAN (use `start-host.ps1` so `.appcache` has the right MIME type).

First open once:
`http://192.168.50.29:8080/cache.html`

Then jailbreak:
`http://192.168.50.29:8080/jb.html`

## Notes
- Keep telemetry=0
- Full power off (not Rest Mode) after hard fails
- Author: X-F1REBALL-X
