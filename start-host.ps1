# Fireball local host (AppCache MIME fixed)
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$hostDir = Join-Path $root 'host'
$port = 8080
$py = @"
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
import os
os.chdir(r'$($hostDir -replace '\\','\\')')
class H(SimpleHTTPRequestHandler):
    def guess_type(self, path):
        if path.endswith('.appcache'):
            return 'text/cache-manifest'
        return SimpleHTTPRequestHandler.guess_type(self, path)
print('Fireball host on http://0.0.0.0:$port/', flush=True)
ThreadingHTTPServer(('0.0.0.0', $port), H).serve_forever()
"@
$tmp = Join-Path $env:TEMP 'fireball_host_server.py'
Set-Content -Path $tmp -Value $py -Encoding UTF8
Write-Host "Serving $hostDir"
Write-Host "First time: http://192.168.50.29:$port/cache.html"
Write-Host "Then:       http://192.168.50.29:$port/jb.html"
python $tmp
