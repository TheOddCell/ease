#!/bin/sh
# https://ba.sh/GKqU
: "${INSTALLPREFIX:=/usr/local/bin}"
if [ -f "./ease" ]; then
  chmod a+x ease
  ./ease -p "Found \zc-46,255,126\zease \zz\zin current directory"
  cp ./ease /tmp/ease
else
  echo "Downloading ease..."
  curl -fsSL https://ba.sh/sg48 -o /tmp/ease
  chmod a+x /tmp/ease
  ./ease -p "Downloaded \zc-46,255,126\zease\zz\z"
fi
mkdir -p     "$INSTALLPREFIX"
mv /tmp/ease "$INSTALLPREFIX"/ease
chmod a+x    "$INSTALLPREFIX"/ease
             "$INSTALLPREFIX"/ease -p \
  "Installed \zc-46,255,126\zease\zz\z to \zc-46,255,126\z$INSTALLPREFIX \zz\z"
