# bash-get-google-images
(Testing in Ubuntu 16.04 in GCE is OK   )  

## Install
./install.sh   
By the way, if you need to install google-chrome-stable, please don't forget to use  $ sudo   
## Usage get-google-images [keyword] [limit]  
After you finishing installation. You  can start to use the command.  
$ get-google-images [keyword] [limit]    

## Usage example
$ get-google-images facebook 30   
Then you can see ./downloads folder. And there are 30 pictures in it  
  
$ get-google-images facebook  
Then you can see ./downloads folder. And there are 20 pictures in it    
## backup folder 
backup folder store backup files for your installation.  
If you install failed, please consider change script and use the files in that folder  

## utility folder
The script in utility folder will you to process downloaded image.   
It's can help you to rename and clean crashed files  
