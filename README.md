NOTICE
======

This version of the script is depreciated, and has been added to my general [git scripts](https://github.com/natemara/git_scripts) repo.

Git Checker
===========

Just a little shell script to check the status of all of your Git repos.

Useage
------

Just run `git\_check.sh <git_dir>` where `<git_dir>` is a directory holding all of your git repos. You can use symlinks, and the script works fine. I reccomend aliasing this in your .bashrc or .bash\_aliases file just so you don't have to type the directory every time. For example, in my `.bash_aliases` file, I have the following line: 

`alias gitCheck='/home/nate/git/git_check/git_check.sh /home/nate/git/'`

This script will print nothing if all of the repos in the directory are both in sync with the origin repo, and in need of no commits. Otherwise, the script will print `[REPO] needs push/pull` or `[REPO] needs commit` for each repo that is flagged.
