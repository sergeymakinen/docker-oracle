#!/bin/bash

if [ "$(ls -A /u01/app/oracle)" ]; then
    true
else
    echo 'Bootstrapping data...'
    unzip -d /u01/app/oracle /usr/lib/oracle/u01.zip
fi
