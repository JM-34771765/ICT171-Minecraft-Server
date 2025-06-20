Minecraft Server Setup
by Jonathan Michael

Last Updated: 06/06/2025

Note: This guide is for an already set up Ubuntu instance in Amazon EC2. See [The Server Setup Document](/ubuntuSetup.md) for more details.  

## SERVER SETUP DETAILS

Step 1: Download the minecraftSetup.sh file using 
```
wget https://raw.githubusercontent.com/JM-34771765/ICT171-Server-Project/refs/heads/main/minecraftSetup.sh
```

Step 2: Within minecraftSetup.sh, make sure the MINECRAFTSERVERURL variable is set to the correct version download link. 

Visit [The Minecraft Server Download Link](https://www.minecraft.net/en-us/download/server) to find the latest version, or search minecraft server download
Note: You can use 
```
nano minecraftSetup.sh
```
 to view the file
Note: The server's version is currently set to 1.21.5

Step 3: While you have the file open, also ensure that the java install command is up-to-date with the latest java version
```
sudo apt install -y openjdk-version_num-jdk
```
Make sure to replace 'version_num' with the current java version number.

Step 4: Intall the zip package for the backup script using
```
sudo apt install zip
```

Step 5: Assign execute permissions using 
```
chmod +x minecraftSetup.sh
``` 

Step 6: Run minecraftSetup.sh using 
```
sudo ./minecraftSetup.sh
```
You may need to add details for a new user 'minecraft' created by the script. Fill these out however you want, but be sure to remember important details such as the password. 

Note: This setup script will start the server automatically. It will also automatically agree to the minecraft EULA. 
For more information visit [The official Minecraft EULA webpage](https://www.minecraft.net/en-us/eula)

If the server displays an error saying you must agree to the EULA, press Control-C and run minecraftSetup.sh again using the command. If the error persists, you may need to edit the eula file manually. To do so, use the command 
```
sudo nano eula.txt
```
Then change the value from 'false' to 'true'. This marks that you Agree to the Minecraft EULA. 

Step 7: Run the command 
```
sudo nano /etc/crontab
``` 
This will open your crontab configuration, which lets you schedule commands to run at regular intervals. 
Below the other scheduled commands, add the line
 ```
 0 * * * * root /opt/minecraft/server/backup
 ```
This command will run the backup script every hour while the EC2 instance is running. There is a guide within the crontab file to adjust the frequency at which the backups are created. 
    
## REGULAR SERVER OPERATION

To access server operations, run the command 
```
cd /opt/minecraft/server
```
This will take you to the directory the server runs from. 

Run the `ls` command to see the server files.

<hr>

To start the server:

Run the command `sudo ./start` This will execute the start script. 

<hr>

To stop the server, either:

Run the `sudo ./stop` command
OR
Type the command `stop` into the server's command line.

<hr>

To edit server properties, including the world file:

Open the server.properties file. You may have to use the `sudo` command to have access to edit the file. You can use any text editor, for example nano e.g.
```
sudo nano server.properties
```
To view the properties without making any changes, use the same command without sudo. 
```
nano server.properties
```
