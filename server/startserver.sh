#!/bin/bash
#
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
set -euo pipefail

# check for serverstarter jar
if [[ -f serverstarter-2.0.1.jar ]]; then
    echo "Skipping download. Using existing serverstarter-2.0.1.jar"
    java -jar serverstarter-2.0.1.jar
    exit 0
else
    # download missing serverstarter jar
    URL="https://github.com/AllTheMods/alltheservers/releases/download/2.0.1/serverstarter-2.0.1.jar"

    if command -v wget &> /dev/null; then
        echo "DEBUG: (wget) Downloading ${URL}"
        wget -O serverstarter-2.0.1.jar "${URL}"
    elif command -v curl &> /dev/null; then
        echo "DEBUG: (curl) Downloading ${URL}"
        curl -o serverstarter-2.0.1.jar "${URL}"
    else
        echo "Neither wget or curl were found on your system. Please install one and try again"
        exit 1
    fi
fi

java -jar serverstarter-2.0.1.jar