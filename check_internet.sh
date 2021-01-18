#!/bin/sh
#

function internet_on(){
/bin/echo "1" > /sys/devices/platform/leds-gpio/leds/mr16\:green\:power/brightness
/bin/echo "0" > /sys/devices/platform/leds-gpio/leds/mr16\:orange\:power/brightness
}

function internet_off(){
/bin/echo "1" > /sys/devices/platform/leds-gpio/leds/mr16\:orange\:power/brightness
/bin/echo "0" > /sys/devices/platform/leds-gpio/leds/mr16\:green\:power/brightness
}

ping -q -W 1 -c 1 8.8.8.8 && internet_on || internet_off
