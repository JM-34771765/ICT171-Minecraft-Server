Amazon EC2 Instance Setup 
by Jonathan Michael

Last Updated: 05/06/2025

This is a guide for setting up an Ubuntu Instance using Amazon EC2. This guide document is designed to be used alongside the Minecraft Server setup guide found [Here](https://aws.amazon.com/blogs/gametech/setting-up-a-minecraft-java-server-on-amazon-ec2/#aws-page-content-main)

Follow the instructions on the AWS Blog, and use this guide as a reference for deploying an ubuntu instance for the same purpose.

At step 4, select 'Ubuntu' and use the default AMI.

At step 5, since the options for instance type are different from the ones listed in the blog, choose one based on your own server needs, including RAM requirements depending on the type of server and number of players. 

At step 10, if you intend to set up the webpage, add two additional rules to allow TCP traffic from anywhere (0.0.0.0/0) for port 80 and port 443.
(By default, there are two boxes you can check to allow HTTP and HTTPS, which are the same as opening these ports.)

Skip steps 12 to 16. The instructions for this portion of setup are covered in [The Minecraft Instruction File](/MinecraftInstructions.md)

Before going through the "Cleaning up" section, be sure to update your packages using 
```
sudo apt update
```
and 
```
sudo apt upgrade
```

For setting up the webpage, see [The Webpage Setup Document](WebpageInstructions.md)
