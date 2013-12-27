#!/bin/sh

git_dir='$1'
sub_dirs=`ls $git_dir | grep -v "\."`

for i in $sub_dirs
do
	cd $git_dir/$i

	local_hash=`git rev-parse --verify master`
	remote_hash=`git rev-parse --verify origin/master`

	need_commit=`git status --short`
	need_push=`echo $local_hash | grep -v $remote_hash | sed s/^//`

	if test -n "$need_commit"; then
		echo $i needs commit
	elif test -n "$need_push"; then
		echo $i needs a push/pull
	fi

done
