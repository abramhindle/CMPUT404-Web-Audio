#!/bin/bash
python -m SimpleHTTPServer 8181 &
xdg-open http://localhost:8181/
