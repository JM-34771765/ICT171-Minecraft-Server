Enshrouded Dedicated Server Setup
by Jonathan Michael

Last Updated: 07/06/2025

Note: This guide is for an already set up Ubuntu instance in Amazon EC2. See [The Server Setup Document](/ubuntuSetup.md) for more details. 

This guide has been adapted from the server setup instructins found [Here](https://www.hostinger.com/tutorials/how-to-set-up-enshrouded-dedicated-server)

## Dedicated Server Setup Details ## 

Step 1: Download the [enshroudedSetup.sh](enshroudedSetup.sh) file using
```
wget https://raw.githubusercontent.com/JM-34771765/ICT171-Server-Project/refs/heads/main/enshroudedSetup.sh 
```

Step 2: Run the command
```
chmod +x enshroudedSetup.sh
```
This will allow the file to execute. Then run
```
sudo ./enshroudedSetup.sh
```
This will run the setup script. 

You may need to add details for a new user 'enshrouded' created by the script. Fill these out however you want, but be sure to remember important details such as the password.

You will need to agree to Valve's Steam License Agreement, which displays during the configuration of SteamCMD. 

Run the command 
```
cd ~
```
This will navigate to the enshrouded user's home directory. Then run
```
/usr/games/steamcmd +@sSteamCmdForcePlatformType windows +force_install_dir /home/enshrouded/enshroudedserver +login anonymous +app_update 2278520 +quit
```

<hr>

Step 3: To edit the Server Configuration:

Open the enshrouded_server.json file. 

You may have to use the `sudo` command to have access to edit the file. You can use any text editor, for example nano e.g.
```
sudo nano /home/enshrouded/enshroudedserver/enshrouded_server.json
```
It is reccommended that you change fields such as the server's name, password, and player limit. Their default values should allow the server to run, but offer low security. 

Step 4: To Start the Server, run the command 
```
wine64 home/enshrouded/enshroudedserver/enshrouded_server.exe
```

To stop the server, press Control+C in the command line that is running the server. 
