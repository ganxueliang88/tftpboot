#!/bin/bash

# Tested on: CentOS 6.4

cd ..

FILE="PREPACK"
cat $FILE
echo

read -r -p "Did you followed instructions? [Y/n] " response
case $response in
    [yY][eE][sS]|[yY]) 
        filename="erpxe-nightly.tar.gz";
        echo "packaging branch to $filename.";
        git archive --format=tar HEAD | gzip > bin/$filename;
        echo "package $filename created successfully.";
        ;;
    *)
        echo "I am waiting till you done.";
        ;;
esac



