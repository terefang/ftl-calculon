#!/usr/bin/env bash

PXDIR=$(cd $(dirname $0) && pwd)
HXDIR=~/bin/haxe
export PATH=$HXDIR:$PATH

HXCMD=$1
shift

cd $PXDIR

case "$HXCMD" in
  -build)
    $HXDIR/haxe --verbose html5.hxml
    ;;
  *)
    $HXDIR/$HXCMD "$@"
    ;;
esac

