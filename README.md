# PS4 14.00 Jailbreak

WebKit + kernel jailbreak host for PlayStation 4 firmware **14.00**. After the userland and kernel stages succeed, the host loads **GoldHEN**.

## Live host

https://x-f1reball-x.github.io/ps4-14.00/

Open once to fill AppCache, then run from the jailbreak page (`host/jb.html`).

## Payload

- **GoldHEN v2.4b18.13** (`hen.bin` / `payload.bin`, 297496 bytes)
- sha256 `39452f5e1c305ac9efcb4745eef7958b4db8c6d85299529f08700970b009ea4d`

## How to use

1. Fully power on the console (not Rest Mode).
2. Open the PS4 browser to the live URL above (or your LAN host).
3. Press **Start** and wait for the progress bar.
4. On success: **DONE**, then the SiSTRo welcome splash for about 3 seconds.
5. On failure: retry (up to 3 in-page attempts, then reload; up to 10 reloads).

## Local hosting

```powershell
.\start-host.ps1
```

Serves the `host` folder over HTTP on port **8080** (correct `.appcache` MIME type). On the PS4 browser:

```text
http://<your-pc-lan-ip>:8080/jb.html
```

## Credits

### WebKit + kernel chain

- **well0nez / m0zz** — afterglow: WebKit + kernel exploit chain for PS4 **13.52 / 14.00** (browser host at [ps4.sentrix.ac](https://ps4.sentrix.ac) / [afterglow-web](https://github.com/well0nez/afterglow-web))
- **jordyidk** — [slopkit](https://github.com/jordyidk/slopkit), in-process WebKit primitive (`core.js`, `mem.js`, `int64.js`)
- **raw13g** — browser host scaffolding (`jb.js`, `ps4_offsets.js`)
- **aminegold0** — [silverps4hen](https://github.com/aminegold0/silverps4hen), rebuilt host lineage

### Payload & host

- **X-F1REBALL-X** — this PS4 14.00 host
- **SiSTR0 / GoldHEN team** — GoldHEN ([GoldHEN](https://github.com/GoldHEN/GoldHEN))
- **al-azif**, **Pharaoh2k**
- **TheFlow, ChendoChap, abc, AlAzif, LightningMods, @egycnq** — PS4 kernel patch / sandbox-escape lineage these payloads build on

## Disclaimer

Educational / research use on consoles you own. Jailbreaking may violate platform terms and can damage hardware. Use at your own risk.
