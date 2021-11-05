# Caffeine for WMs

<br />
Caffeine for Window Managers(BSPWM, i3, Awesome)

There is also a script for indicating Caffeine in [Polybar](https://github.com/polybar/polybar)

<ins>**Dependencies**</ins>

* xset 
* [Font Awesome 5](https://fontawesome.com/download) for Caffeine Indicator in polybar
<br />

## Using Caffeine Script

You can use the [script](caffeine.sh) to toggle Caffeine or to check if its Enabled or not.

<ins>**Options**</ins>

* `-t` :     Toggles Caffeine
* `-s` :     Prints the status of Caffeine

<ins>**Script Execution**</ins>

Script can be executed from terminal or any hotkey daemon(like sxhkd)

<br />

## Caffeine Indicator for Polybar


For checking the status of caffeine in [Polybar](https://github.com/polybar/polybar)

Paste the module below in config file of Polybar:
```Sh
[module/caffeine]
type = custom/script
exec = ${Location_of_Caffeine_status}
format-background = #010912
format-foreground = #e60053
tail = true
interval = 3
```

Change the value of `exec` with the location of the [Caffeine Status](caffeine_status.sh) script and if wanted change the value of `interval` to the desired value(Recommended to use 3 because of its System Usage)