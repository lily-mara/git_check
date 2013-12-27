Git Checker
===========

Just a little shell script to check the status of all of your Git repos.

Useage
------

Just run `git\_check.sh <git\_dir>` where `<git\_dir>` is a directory holding all of your git repos. You can use symlinks, and the script works fine. I reccomend aliasing this in your .bashrc or .bash\_aliases file just so you don't have to type the directory every time. For example, in my `.bash\_aliases` file, I have the following line `alias gitCheck='/home/nate/git/git\_check/git\_check.sh /home/nate/git/'`
