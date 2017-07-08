#!/bin/sh

# ---- TEMPLATE ----

# Hook for modifcation stuff before 
#          publicbox/bin/install  ... openwrt 
# is started


if [ !  -f $1 ] ; then 
  echo "Config-File $1 not found..." 
  exit 255
fi

#Load config
. $1 

#Load openwrt-common config and procedures file!
. /etc/publicbox.config


# You can uncommend this line to see when hook is starting:
# echo "------------------ Running $0 ------------------"
