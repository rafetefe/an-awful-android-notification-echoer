while true ; do watch -g "adb shell dumpsys notification --noredact | grep -e android.title -e android.text | cut -d= -f2 | cut -c9- | rev | cut -c2- | rev" && notify-send "$(adb shell dumpsys notification --noredact | grep -e android.title -e android.text | cut -d= -f2 | cut -c9- | rev | cut -c2- | rev)" ; done
