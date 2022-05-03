#!/bin/bash

echo DEBUG START
echo $FOO
echo $DISPLAY
echo DEBUG END


acc='xklimes5@fi.muni.cz'
		notify() { 
				notify-send --app-name="mutt-wizard" "New mail!" "📬 $2 new mail(s) in \`$1\` account."
        echo I WAS HERE
			}
    new=$(find\
	"$HOME/.local/share/mail/xklimes5@fi.muni.cz/INBOX/new/"\
	"$HOME/.local/share/mail/xklimes5@fi.muni.cz/Inbox/new/"\
	"$HOME/.local/share/mail/xklimes5@fi.muni.cz/inbox/new/"\
	"$HOME/.local/share/mail/xklimes5@fi.muni.cz/INBOX/cur/"\
	"$HOME/.local/share/mail/xklimes5@fi.muni.cz/Inbox/cur/"\
	"$HOME/.local/share/mail/xklimes5@fi.muni.cz/inbox/cur/"\
	-type f -newer "${XDG_CONFIG_HOME:-$HOME/.config}/mutt/.mailsynclastrun" 2> /dev/null)
 #    "$HOME/.local/share/mail/xklimes5@fi.muni.cz/CVT/cvt/new/"\
	# "$HOME/.local/share/mail/xklimes5@fi.muni.cz/CVT/cvt/cur/"\
 #    "$HOME/.local/share/mail/xklimes5@fi.muni.cz/CVT/unix/new/"\
	# "$HOME/.local/share/mail/xklimes5@fi.muni.cz/CVT/unix/cur/"\
    newcount=$(echo "$new" | sed '/^\s*$/d' | wc -l)
    #echo $newcount
    # echo $new
    if [ "$newcount" -gt 0 ]; then
      notify "$acc" "$newcount" 
      echo "$acc" "$newcount" 
      mpg123 -f 16000 -q "/home/k11m1/Downloads/pixies meloboom.mp3" >/dev/null 
    fi



#Create a touch file that indicates the time of the last run of mailsync
touch "${XDG_CONFIG_HOME:-$HOME/.config}/mutt/.mailsynclastrun"
