WebPage Setup For ICT171 Server Project
by Jonathan Michael

Last Updated: 06/06/2025

This is a guide for setting up a webpage with login instructions for the ICT171 Server Project Minecraft Server. The prerequesites for these instructions to function as intended can be found at [Instance Setup Instructions](/ubuntuSetup.md) and [Minecraft Server Setup](MinecraftInstructions.md)

## Installing Files ##

Step 1: In your EC2 instance run the command
```
sudo apt install apache2
```
This will install the apache2 Web Server onto your instance.

Step 2: Download the [index.html](index.html) file from this repository. You can do this directly to your instance by running the command
```
wget https://github.com/JM-34771765/ICT171-Minecraft-Server/blob/WebPage/index.html
```
Then run the command 
```
sudo cp index.html /var/www/html/index.html
```

This should replace the default apache2 index file with the current version of the index file from this repository. 

Step 3: In order for some of the images in the file to render correctly, you will need to also download image files into the /var/www/html directory. 
You can do this using the same method as the index file, using
```
wget https://github.com/JM-34771765/ICT171-Minecraft-Server/blob/WebPage/minecraftImage.png
```
then
```
sudo cp minecraftImage.png /var/www/html/
```
This should move the image into the correct directory so that the index file can properly reference it. 

<hr>

## Creating a Domain ##

For this project, I have also registered a domain for the Webpage and server. 
