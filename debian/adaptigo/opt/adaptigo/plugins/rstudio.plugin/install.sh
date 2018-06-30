#!/bin/bash

URL=$(wget "https://download1.rstudio.org/" -O - | tr ' ' '\n' | grep -o "http*.\?://.*rstudio.*.deb" | head -n 1)

apt -y install "$URL"
