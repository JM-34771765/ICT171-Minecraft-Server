Enshrouded Dedicated Server Setup
by Jonathan Michael

Last Updated: 07/06/2025

Note: This guide is for an already set up Ubuntu instance in Amazon EC2. See [The Server Setup Document](/ubuntuSetup.md) for more details. 

This guide has been adapted from the server setup instructins found [Here](https://www.hostinger.com/tutorials/how-to-set-up-enshrouded-dedicated-server)

## Dedicated Server Setup Details ## 

Step 1: Download the [enshroudedSetup.sh](enshroudedSetup.sh) file using
```
wget 
```

Step 2: To edit the Server Configuration:

Open the enshrouded_server.json file. 

You may have to use the `sudo` command to have access to edit the file. You can use any text editor, for example nano e.g.
```
sudo nano /home/enshrouded/enshroudedserver/enshrouded_server.json
```
It is reccommended that you change fields such as the server's name, password, and player limit. Their default values should allow the server to run, but offer low security. 

Step 3: To Start the Server, run the command 
```
wine64 home/enshrouded/enshroudedserver/enshrouded_server.exe
```

To stop the server, press Control+C in the command line that is running the server. 
