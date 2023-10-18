# an-awful-android-notification-echoer
send android notifications to desktop

```
while true ; do watch -g "adb shell dumpsys notification --noredact | grep -e android.title -e android.text | cut -d= -f2 | cut -c9- | rev | cut -c2- | rev" && notify-send "$(adb shell dumpsys notification --noredact | grep -e android.title -e android.text | cut -d= -f2 | cut -c9- | rev | cut -c2- | rev)" ; done
```

# Wireless
for convience adb can be accesed via wireless by doing

phone ip can be obtained by 
```
adb shell "ifconfig | grep -A 1 wlan0 | tail -n 1 | cut -f2 -d: | cut -f1 -d' '"
```
and
```
adb tcpip <any_port_num_you_please>
adb connect <phone_ip>:<port_you_have decided>
```
