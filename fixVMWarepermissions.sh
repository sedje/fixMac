#!/usr/bin/env bash

FILES="/Applications/VMware\ Fusion.app/Contents/Library/LaunchServices/*Helper
/Library/PrivilegedHelperTools/com.vmware.VMMonHelper
/Library/PrivilegedHelperTools/com.vmware.KextControlHelper"

for FILE in $FILES 
do
        if test -f "$FILE"; then
                sudo xattr -rd com.apple.quarantine $FILE
        fi
done

sudo xattr -rd com.apple.quarantine /Applications/VMware\ Fusion.app/Contents/Library/LaunchServices/*Helper
sudo xattr -d -r com.apple.quarantine /Library/PrivilegedHelperTools/com.vmware.VMMonHelper
sudo xattr -d -r com.apple.quarantine /Library/PrivilegedHelperTools/com.vmware.KextControlHelper
