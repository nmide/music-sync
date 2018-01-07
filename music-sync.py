#!/usr/bin/python3

'''
A simple script to serve static content

In this case to provide an archive of files
to download to my Android device
'''

import http.server
import socketserver
import setproctitle

setproctitle.setproctitle("music-sync-httpd")
handler = http.server.SimpleHTTPRequestHandler
shttpd = socketserver.TCPServer(("", 8000), handler)

try:
    print("server listening on port 8000")
    shttpd.serve_forever()
finally:
    shttpd.server_close()


