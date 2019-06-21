### Shell Cheatsheet ###

## Table of Content ##
=> 1. main commands
=> 2. helpers
=> 3. content
=> 4. work with files + folders
=> 5. search + update
=> 6. filter + analyze
=> 7. shell scripts
=> 8. values
=> 9. admin
=> 10. SSH + SFTP

#main commands
ls							Show the content of a directory
ls /						Show the content of a subdirectory
ls --						Show all ls functions
ls D*						Show all files that begins with D		
ls *d						Show all files that ends with d
ls T?						Ask if a file with T exists
ls T??						Ask if a file with T and 3 characters exists
ls S[eno]*					Ask if a file with S and the characters «e» «n» or «o» exists
ls S*[1-3] 					Show all files with S that contains the number «1» to «3»

cd							Change the directory
cd ..						go back
cd /						go back to the root directory
cd /folder 					go back to the root directory and change directly to an new folder
cd folder/folder2			Change the directory by folders
cd "folder test"			if a folder has a whitespace
cd folder\ test				escaping if a folder has a whitespace (cmd + alt + /)

#wildcards
-a 							Show all (hidden) files
-l 							Show list
-la 						Show list with all (hidden) files
-lat 						Show list with all (hidden) files by date
-C 							list entries by columns
-d 							list directory themselves, not their contents
|							Pipe: Command is forwarded to another command

#helpers
pwd							Who i am? print absolut path
man hier					show manual of the complete root directory
man -k zip					list all manual that conatins «zip»
ls --help 					shos a help-file for the command «ls»

clear						clears the current session
reset						resets the current session
exit 						exit current state

#content
cat text.txt							Show the content of the txt-file
cat text.txt | more						Show first lines and continue with more command
head text.txt 							Show only the first 10 lines of the txt-file
tail text.txt 							Show only the last 10 lines of the txt-file

#work with files & folders
mkdir test-folder						Creates the folder «test-folder»
touch test-document						Creates a new empty txt-file

rmdir test-folder						Deletes the folder «test-folder» (works only with empty folders)
rmdir -p test-folder					Deletes the folder an its acestors
rm test-document						Deletes the txt-file
rm test-document*						Deletes all txt-files 
rm -r test-folder						Deletes the folder and all its contents recursively
rm -rf									Deletes the folder and all its contents recursively without asking

mv test-document tests/					Moves the txt-file to a folder
mv test-document ..						Moves to parent directory
mv test-document2						Moves to a new directory (if the name doesnt exists)
	
cp test-document tests/					Copy the files to a folder
cp -r test-folder ..					Copy the folder to the parent directory
cp -rp 									Copy the folder (contains rights)

nano text.txt 							Edit a file with the nano editor
Ctrl (Control) + G 						Show all nano functions 
Ctrl (Control) + O 						Save
Ctrl (Control) + ... 					Use the nano tools (Save, Replace etc...)

tar cvf archive.tar test-folder 		Packs the test-folder into an archive
tar xvf archive.tar						Entpacks the archive
tar tf archive.tar						Shows the content of the archive
tar cvfz archive.tar.gz test-folder		Packs the test-folder into an zipped archvive (reduces the file-size)
gzip text.txt 							Zip a single file
gunzip text.gz							Unzip the Zip-File

#Search & Update
du 									show folder an file size in byte
du -ms 								show folder an file size in mega-byte
du -ks								show folder an file size in kilo-byte
du -hs *							show folder an file size of all files (byt, mega-byte, kilo-byte)

locate folder or file 				Search file or folder
locate -i folder or file 			Search file or folder (ignore case sensitive)
locate -b '\folder or file' 		Search for exact term
find /folder folder or file 		Search in specific folder
find /folder -type d 				Search in for specific folder only for folders
find /folder -type f 				Search in for specific files only for files
find /folder -type f -size 100k		Search in for specific files only for files < 100k
grep 								Browse files for specific pieces of text with regular expressions
sudo find / 						Search the entire hard disk with admin rights
sudo find / -atime 2				Search only for files changed in the last 2 days
sudo updatedb						Update the database		

#Filter & Analyze
cd /var/log							Navigate to the logfiles folder
ls -lat 							Show list with all (hidden) files by date
cat syslog.1						Show the content of the syslog.1 file
cat syslog.1 | grep	term			Search for a spefic term in the syslog.1 file
cat syslog.1 | grep	term -v			... Show files where a certain term does not occur
cat syslog.1 | grep	term | sort		... Sort by date
cat syslog.1 | grep	term | sort		... Sort by date in reverse order
cat syslog.1 | grep	term | wc		... Count Words (lines, words, chars)

#Shell Scripts
nano helloworld.sh 					Create a new shell script (#!/bin/bash)
chmod +x helloworld.sh 				Gives the file the permissions to exuecute
./helloworld.sh 					Executes the script
sudo mv helloworld.sh /bin 			Moves the script into the /bin folder (let you exuecute the file globally without specifying the path)

#values
echo "Hello World"					Outputs the string
echo $HOME							Shows the value of the home varibale
echo $PATH 							Shows the value of the path variable
man echo							shows manual of echo command

#admin
sudo								work with admin permissions
sudo -s 							work permanetly with admin permissions
-g 									work globally

#SSH & FTP
ssh -l <username> <IP>				Connect with bash to linux server
bash								Starts bash
sh 									Go back to simple shell

