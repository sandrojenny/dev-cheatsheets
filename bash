### Shell Cheatsheet ###

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

-a 							show all (hidden) files
-l 							show list
-la 						show list with all (hidden) files
-lat 						show list with all (hidden) files by date
-C 							list entries by columns
-d 							list directory themselves, not their contents

#helpers
pwd							Who i am? print absolut path
man hier					show manual of the complete root directory
man -k zip					list all manual that conatins «zip»
ls --help 					shos a help-file for the command «ls»

clear						clears the current session
reset						resets the current session
exit 						exit current state

#content
cat text.txt				Show the content of the txt-file
cat text.txt | more			Show first lines and continue with more command
head text.txt 				Show only the first 10 lines of the txt-file
tail text.txt 				Show only the last 10 lines of the txt-file

#work
mkdir test-folder			Creates the folder «test-folder»
rmdir test-folder			Deletes the folder «test-folder» (works only with empty folders)
rmdir -p test-folder		Deletes the folder an its acestors
rm -r test-folder			Deletes the folder and all its contents recursively
rm -rf						Deletes the folder and all its contents recursively without asking


#values
echo "Hello World"			Outputs the string
echo $HOME					Shows the value of the home varibale
echo $PATH 					Shows the value of the path variable
man echo					shows manual of echo command

#admin
sudo						work with admin permissions
sudo -s 					work permanetly with admin permissions
-g 							work globally

# SSH
ssh -l <username> <IP>		Connect with bash to linux server
bash						Starts bash
sh 							Go back to simple shell

