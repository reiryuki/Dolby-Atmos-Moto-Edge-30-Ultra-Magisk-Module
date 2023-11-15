[ ! "$MODPATH" ] && MODPATH=${0%/*}
UID=`id -u`

# run
. $MODPATH/function.sh

# cleaning
remove_cache
PKGS=`cat $MODPATH/package.txt`
#dPKGS=`cat $MODPATH/package-dolby.txt`
for PKG in $PKGS; do
  rm -rf /data/user*/"$UID"/$PKG/cache/*
done






