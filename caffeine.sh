# !/bin/bash

cxset="$(xset q)"
sub1="DPMS is Enabled"
sub2="DPMS is Disabled"


toggle_caffeine () {
	if [[ "$cxset" == *"$sub1"* ]]; then
		xset -dpms s off
	elif [[ "$cxset" == *"$sub2"* ]]; then
		xset +dpms s on
	fi
}

caffeine_stat () {
	if [[ "$cxset" == *"$sub1"* ]]; then
		echo "Caffeine is Disabled"
	elif [[ "$cxset" == *"$sub2"* ]]; then
		echo "Caffiene is Enabled"
	fi
}

while getopts ":t:s" opt; do
	case $opt in
		t)
			toggle_caffeine
			;;
		s)
			caffeine_stat
			;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			;;
	esac
done
