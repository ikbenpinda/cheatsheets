#! /bin/bash

# set -xe

# Check; if [-z which adb];? Is adb in the PATH?

if [[ -z $(which adb) ]]; then
	echo "Couldn't find adb in PATH. Maybe check one of these paths and add them to your PATH?"
	echo "MacOS:   /Users/$(whoami)/Library/Android/sdk"
	echo "Windows: C:\Users\\$(whoami)\AppData\Local\Android\sdk\platform-tools"
	exit 1
fi

echo "Currently connected devices:"
echo -e
echo "$(adb devices)"
echo -e
echo "Please connect your device over USB if this is the first time connecting."

connected_devices="$(adb devices | sed s/"List of devices attached"// | grep device | wc -l)"
#Check if other devices should be disconnected first if available.
if [[ ${connected_devices} -gt 0 ]]; then
	# adb disconnect
	echo "Disconnected ${connected_devices} other device(s)."
fi

adb kill-server
adb start-server
adb tcpip 5555

echo -e
echo "ADB running in TCP mode on port 5555."

IP_ADDRESS="$1"
MATCH_REGEX="([0-9]{1,3})"

if [[ $IP_ADDRESS =~ $MATCH_REGEX ]]; then
	echo "$1 looks like (part of) an IP-address."
	MATCH_COUNT=$(echo $IP_ADDRESS | grep -oE $MATCH_REGEX | wc -l)
	if [[ $MATCH_COUNT -eq 1 ]]; then
		echo "Single octet found, considering as shorthand for 192.168.1.xxx network."
		RESOLVED_ADDRESS="192.168.1.$IP_ADDRESS"
	elif [[ $MATCH_COUNT -eq 2 ]]; then
		# if match count 2; complete ip with 192.168
		echo "Two octets found, considering as shorthand for 192.168.xxx.xxx network."
		RESOLVED_ADDRESS="192.168.$IP_ADDRESS"
	elif [[ $MATCH_COUNT -eq 3 ]]; then
		echo "Three octets found, considering as shorthand for 192.xxx.xxx.xxx network."
		RESOLVED_ADDRESS="192.$IP_ADDRESS"
	elif [[ $MATCH_COUNT -eq 4 ]]; then
		echo "Fully qualified address, using $IP_ADDRESS."
		# if match count 4; use as full ip.
		RESOLVED_ADDRESS=$IP_ADDRESS
	else
		echo "Given IP contains either too many octets or too few(MATCH_COUNT=${MATCH_COUNT})."
		echo "Exiting."
		exit 1
	fi
else
	echo "$1 does not look like an IP-address. Exiting."
	exit 1
fi

if [[ ! -z $RESOLVED_ADDRESS ]]; then
	adb connect $RESOLVED_ADDRESS
fi

connected_devices_count_2="$(adb devices | sed s/"List of devices attached"// | grep device | wc -l)"
if [[ $connected_devices -gt $connected_devices_count_2 ]]; then
	echo "Connected to $RESOLVED_ADDRESS!"
fi

# Only first word is checked, ruling out non-overriding aliases with spaces.
adb() {
    if [[ $@ == "disco" ]]; then
        command adb disconnect
    else
        command adb "$@"
    fi
}

# maybe something like this?
# adbd=$(adb disconnect)
# adbc=$("~/.adbconn.sh $@")
