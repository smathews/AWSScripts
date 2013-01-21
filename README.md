AWSScripts
==========

Scripts for cli aws tools, like snapshot cleaner

Snapshot Cleaner
================
This will remove all snapshots not currently in use by AMIs (I have no clue why the AWS console doesn't have an option for this)
NOTE: If you use snapshots for any other purpose than amis, you will need to modify this script to accommodate 

usage: <path>/snapshot_cleaner.sh

prerequisites: AWS cli tools setup and added to your system path
see -> http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/SettingUp_CommandLine.html
