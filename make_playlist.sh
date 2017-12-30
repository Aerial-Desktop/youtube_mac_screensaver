
# handle input, planned to be command line but could also be prompting.

#<done>
# download sc
# cut command add embed logic... and autoplay
# sed command insert into that one line.
#</done>

# test, do they have the environment to compile? if not lead them through the process.

# compile with xcode tools.
# make into an offbeat brew package?
# change the name of screensaverprogram via second commnd-line ARGV

 git clone https://github.com/liquidx/webviewscreensaver.git &&


# string conversion

# cut before "watch?v=" to variable 1
# cut everything after "watch?v=" to variable 2
# variable1 + "/embed/" + variable2 + ?rel=0&autoplay=1

stringy="https://www.youtube.com/watch?v=durCuF6jb8k&list=PLZbIo_dYB77vgAus0es8Ul3kFkRYIRjJc"
# https://www.youtube.com/embed/durCuF6jb8k?rel=0&autoplay=1&list=PLZbIo_dYB77vgAus0es8Ul3kFkRYIRjJc&index=1&?rel=0&autoplay=1
var1=$(echo $stringy | cut -c1-23);var2=$(echo $stringy | cut -c33-);converted_string=$(echo $var1"/embed/"$var2"?rel=0&autoplay=1");

# modifying the default webview
pathy="webviewscreensaver/WebViewScreenSaver/WVSSAddress.m"
# line 25
# replace google.com or replace *?
replace_line="static NSString * const kScreenSaverDefaultURL = @\"$converted_string\";"
echo $replace_line

sed -i '' '25s?.*?'""'?' $pathy
sed -i '' '25s~.*~'"$replace_line"'~' $pathy

# recompile program to create screeensaver to user.
# gcc -framework Foundation WebViewScreenSaver/WebViewScreenSaverRig/main.m -o test -v
# this implementation is pending better wifi connection to download xcode.
# additionally get screensaver location to move to this current location for user's use.

# modify screensavers name from second command line argument.
#if not it will default to a numerical structure.
### saver_location="test/path"
# num=0;
# if($2 !== "")
### mv $saver_location ./$2.saver
# else 
#   cp -rf $saver_location ./youtube-sc-$num
#   if exit code increment
# fi



