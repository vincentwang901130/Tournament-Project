# Tournament-Project
## How to run
1.Get your vagrant install and set properly.
2.Download or Git clone this project then replace all the files under your vagrant  direcotry `/vagrant/tournament`.
2.Start your vagrant by using command `vagrant up` under the vagrant direcotry
3.SSH to your vagrant VM by using command `vagrant ssh`.
4.CD to direcotry `/vagrant/tournament`.
5.Run psql by using command `psql`.
6.Copy the content of tournament.sql file to the terminal and type '\q' to quit the psql command line.
7.Run the script by using command 'python tournament_test.py' under the directory of '/vagrant/tournament'.
8.Test Result will be displayed in the terminal.
