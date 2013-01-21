#!/bin/bash
images=$(ec2-describe-images)
for OUTPUT in $(ec2-describe-snapshots | sed 's/^.*\(snap-.\{8\}\).*\(ami-.\{8\}\).*/\1,\2/g')
do
    IFS=','
    read -a array <<< "$OUTPUT"
    snap=${array[0]}
    ami=${array[1]}

    if ! grep -q $ami <<<$images; then
        ec2-delete-snapshot $snap
    fi
done
