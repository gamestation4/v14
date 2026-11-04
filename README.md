# PS4 14.00 host

WebKit jailbreak host for PS4 firmware **14.00**.

Author: **X-F1REBALL-X**

## Live

GitHub Pages (HTTPS):
https://x-f1reball-x.github.io/ps4-14.00/

Open once to fill AppCache, then the jailbreak page:
- https://x-f1reball-x.github.io/ps4-14.00/host/cache.html
- https://x-f1reball-x.github.io/ps4-14.00/host/jb.html

## Local HTTP

Serve the `host` folder with `start-host.ps1` (sets the correct `.appcache` MIME type):

```
.\start-host.ps1
```

Then on the PS4 browser (HTTP):
- `http://<PC-IP>:8080/cache.html`
- `http://<PC-IP>:8080/jb.html`

## Payload

- GoldHEN **v2.4b18.13** (`hen.bin` / `payload.bin`, 297496 bytes)
- sha256 `39452f5e1c305ac9efcb4745eef7958b4db8c6d85299529f08700970b009ea4d`

## Behavior

- Empty page title (address bar stays clean)
- Auto: **3** in-page attempts, then reload; up to **10** reloads
- After GoldHEN LOADED: SiSTRo welcome image (`welcome-goldhen.jpg`) for **3 seconds**, then the page closes
- Telemetry off (`telemetry=0`)

## Host files

| File | Role |
| --- | --- |
| `jb.html` / `jb.js` | UI + exploit runner |
| `fb_kevent.js` / `fb_kbase.js` / `fb_tables.js` | kernel stage |
| `core.js` / `mem.js` / `int64.js` / `ps4_offsets.js` | primitives / offsets |
| `hen.bin` / `payload.bin` | GoldHEN v2.4b18.13 |
| `welcome-goldhen.jpg` | post-JB splash |
| `cache.appcache` / `cache.html` | offline cache |
| `patches/1400.bin` | 14.00 patch blob |

## Notes

- Prefer a full power off (not Rest Mode) after hard fails
- Hard-refresh the PS4 browser after a Pages update so AppCache picks up new hashes
