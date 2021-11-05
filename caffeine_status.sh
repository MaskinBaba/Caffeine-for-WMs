#/bin/bash

cxset="$(xset q)"
sub="DPMS is Enabled"
sub1="DPMS is Disabled"

if [[ "$cxset" == *"$sub"* ]]; then
	echo " "
elif [[ "$cxset" == *"$sub1"* ]]; then
	echo "  "
fi
