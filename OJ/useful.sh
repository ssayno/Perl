#!/usr/bin/env bash
for file in *.pl; do
    if [[ `cat $file` =~ "open" && ! `cat $file` =~ "close(" ]]; then
        open_name=$(sed -n 's/open(\([[:upper:]]*\), .*;/\1/p' $file)
        sed -i "\$a\\close\($open_name\)" $file
    fi
done
