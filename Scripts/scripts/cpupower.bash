#!/bin/bash

GOVERNOR_NOCHARGE=powersave # CPU governor when not charging
GOVERNOR_CHARGE=performance # CPU governor when charging
recur=60 # Set governor after x seconds just in case it didn't correctly set or get set by another program; comment "let ticks--" line in function main to disable

# Don't change values below this text
ticks=$recur
laststate=1337
state=

CPUPOWER=cpupower
ACPI=acpi

function die {
  echo "$@"
  exit 1
}

function checkACPluggedIn {
  st="$($ACPI -a | cut -d' ' -f3)"
  if [ "x$st" = "xoff-line" ]; then
    echo "0"
  elif [ "x$st" = "xon-line" ]; then
    echo "1"
  else
    echo "-1"
  fi
}

function onSwitchState {
  echo
  ticks=$recur
  if [ $state -eq 0 ]; then
    $CPUPOWER frequency-set -g $GOVERNOR_NOCHARGE
    echo "Switched to governor $GOVERNOR_NOCHARGE"
  fi
  if [ $state -eq 1 ]; then
    $CPUPOWER frequency-set -g $GOVERNOR_CHARGE
    echo "Switched to governor $GOVERNOR_CHARGE"
  fi
}

function main {
  while true; do
    state="$(checkACPluggedIn)"
    if [ $state -lt 0 ]; then
      die "An unexpected error occurred. Does this computer have a battery?"
    fi
    if [ ! $state -eq $laststate ]; then
      onSwitchState
    fi
    laststate="$state"
    let ticks--
    if [ $ticks -lt 1 ]; then
      onSwitchState
    fi
    sleep 1
  done
}

if [ ! $UID -eq 0 ]; then
  die "This script must be run as root."
fi

noexec=0

echo -n "cpupower: "
CPUPOWER="$(which cpupower 2>/dev/null)"
if [ $? -eq 0 ]; then
  echo $CPUPOWER
else
  echo not found
  noexec=1
fi

echo -n "acpi: "
ACPI="$(which acpi 2>/dev/null)"
if [ $? -eq 0 ]; then
  echo $ACPI
else
  echo not found
  noexec=1
fi

if [ ! $noexec -eq 0 ]; then
  die "One or more required programs have not been found. Please install them."
fi

main
exit $?
