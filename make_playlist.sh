# handle input, planned to be command line but could also be prompting.
# download sc
# cut command add embed logic... and autoplay
# sed command insert into that one line.
# test, do they have the environment to compile? if not lead them through the process.
# compile with xcode tools.
# 
# make into an offbeat brew package?
#
# change the name of screensaverprogram via second commnd-line ARGV

#### git clone https://github.com/liquidx/webviewscreensaver.git

# string conversion
stringy="https://www.youtube.com/watch?v=durCuF6jb8k&list=PLZbIo_dYB77vgAus0es8Ul3kFkRYIRjJc"
# https://www.youtube.com/embed/durCuF6jb8k?rel=0&autoplay=1&list=PLZbIo_dYB77vgAus0es8Ul3kFkRYIRjJc&index=1&?rel=0&autoplay=1

# cut before "watch?v=" to variable 1
# cut everything after "watch?v=" to variable 2
# variable1 + "/embed/" + variable2 + ?rel=0&autoplay=1

var1=$(echo $stringy | cut -c1-23)
var2=$(echo $stringy | cut -c33-)
echo $var1"/embed/"$var2"?rel=0&autoplay=1"
