#!/bin/sh

git_dir='/home/nate/git/'
sub_dirs=`ls $git_dir | grep -v "\."`

for i in $sub_dirs
do
	cd $git_dir/$i
	local_hash=`git rev-parse --verify master`
	remote_hash=`git rev-parse --verify origin/master`

	need_push=`echo $local_hash | grep -v $remote_hash`
	echo $need_push

done
