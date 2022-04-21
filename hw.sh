#!/usr/bin/env bash

# https://github.com/jquery/jquery/archive/refs/tags/3.6.0.tar.gz
# https://github.com/lodash/lodash/archive/refs/tags/4.0.0.tar.gz

HXVER=4.2.5
HXTGZ=https://github.com/HaxeFoundation/haxe/releases/download/$HXVER/haxe-$HXVER-linux64.tar.gz
NKTGZ=https://github.com/HaxeFoundation/neko/releases/download/v2-3-0/neko-2.3.0-linux64.tar.gz
HLTGZ=https://github.com/HaxeFoundation/hashlink/releases/download/latest/hashlink-latest-linux-amd64.tar.gz
PXDIR=$(cd $(dirname $0) && pwd)

EXE=$PXDIR/$(basename $0)

if [ "x$1" = "x-P" ]; then
  shift
  PXDIR=$(cd $1 && pwd)
  shift
fi

HXDIR=$PXDIR/.haxe
HXLIB=$PXDIR/.haxelib
TMPDIR=$PXDIR/target/.tmp
mkdir -p $TMPDIR

export PATH=$HXDIR:$PATH
export LD_LIBRARY_PATH=$HXDIR:$LD_LIBRARY_PATH

HXCMD=$1
shift

cd $PXDIR

case "$HXCMD" in
  -bootstrap)
    if [ -d $HXDIR ] ; then
      rm -rf $HXDIR $HXLIB
    fi
    mkdir -p $HXDIR
    curl -L $HXTGZ > $TMPDIR/haxe.tgz
    curl -L $HLTGZ > $TMPDIR/hl.tgz
    curl -L $NKTGZ > $TMPDIR/neko.tgz
    tar -xf $TMPDIR/haxe.tgz -C $HXDIR --strip 1
    tar -xf $TMPDIR/hl.tgz -C $HXDIR --strip 1
    tar -xf $TMPDIR/neko.tgz -C $HXDIR --strip 1
    $EXE -P $PXDIR haxelib newrepo
    $EXE -P $PXDIR haxelib setup $HXLIB
    $EXE -P $PXDIR haxelib install build-html5.hxml --skip-dependencies --always
    $EXE -P $PXDIR haxelib install lime
    $EXE -P $PXDIR haxelib install openfl
    $EXE -P $PXDIR haxelib install flixel
    $EXE -P $PXDIR haxelib git haxeui-flixel https://github.com/haxeui/haxeui-flixel
    $EXE -P $PXDIR haxelib run lime setup flixel
    $EXE -P $PXDIR haxelib run lime setup linux
    $EXE -P $PXDIR haxelib run lime build linux
    $EXE -P $PXDIR haxelib install flixel-tools
    $EXE -P $PXDIR haxelib run flixel-tools setup
    ;;
  -build)
    $EXE -P $PXDIR  -build-html5
    $EXE -P $PXDIR  -build-flixel
    ;;
  -build-html5)
    $HXDIR/haxe --verbose build-html5.hxml
    ;;
  -build-flixel)
    $HXDIR/haxelib run lime test html5
    ;;
  *)
    $HXDIR/$HXCMD "$@"
    ;;
esac

