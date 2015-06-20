# Switch Finder to given Language and Locale
#
# $1 = Language Code
# $2 = Locale Code
#

osascript -e 'tell application "Finder" to quit'
sleep 1

nohup /System/Library/CoreServices/Finder.app/Contents/MacOS/Finder -AppleLanguages "($1)" -AppleLocale $2 &> /dev/null &
sleep 2

osascript -e 'tell application "Finder" to activate'
