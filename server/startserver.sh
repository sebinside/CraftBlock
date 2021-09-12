# https://github.com/AllTheMods/alltheservers
#
# The MIT License (MIT)
#
# Copyright (c) 2018 BloodWorkXGaming
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


DO_RAMDISK=0
if [[ $(cat server-setup-config.yaml | grep 'ramDisk:' | awk 'BEGIN {FS=":"}{print $2}') =~ "yes" ]]; then
    SAVE_DIR=$(cat server.properties | grep 'level-name' | awk 'BEGIN {FS="="}{print $2}')
    mv $SAVE_DIR "${SAVE_DIR}_backup"
    mkdir $SAVE_DIR
    sudo mount -t tmpfs -o size=2G tmpfs $SAVE_DIR
    DO_RAMDISK=1
fi
	if [ -f serverstarter-@@serverstarter-libVersion@@.jar ]; then
			echo "Skipping download. Using existing serverstarter-@@serverstarter-libVersion@@.jar"
         java -jar serverstarter-@@serverstarter-libVersion@@.jar
               if [[ $DO_RAMDISK -eq 1 ]]; then
               sudo umount $SAVE_DIR
               rm -rf $SAVE_DIR
               mv "${SAVE_DIR}_backup" $SAVE_DIR
               fi
               exit 0
	else
			export URL="https://github.com/Yoosk/ServerStarter/releases/download/v@@serverstarter-libVersion@@/serverstarter-@@serverstarter-libVersion@@.jar"
	fi
		echo $URL
		which wget >> /dev/null
		if [ $? -eq 0 ]; then
			echo "DEBUG: (wget) Downloading ${URL}"
			wget -O serverstarter-@@serverstarter-libVersion@@.jar "${URL}"
   else
			which curl >> /dev/null
			if [ $? -eq 0 ]; then
				echo "DEBUG: (curl) Downloading ${URL}"
				curl -o serverstarter-@@serverstarter-libVersion@@.jar "${URL}"
			else
				echo "Neither wget or curl were found on your system. Please install one and try again"
         fi
      fi
java -jar serverstarter-@@serverstarter-libVersion@@.jar
if [[ $DO_RAMDISK -eq 1 ]]; then
    sudo umount $SAVE_DIR
    rm -rf $SAVE_DIR
    mv "${SAVE_DIR}_backup" $SAVE_DIR
fi
