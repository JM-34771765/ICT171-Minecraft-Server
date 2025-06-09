Amazon EC2 Instance Setup 
by Jonathan Michael

Last Updated: 05/06/2025

This is a guide for setting up an Ubuntu Instance using Amazon EC2. This guide document is an adapted version of the Minecraft Server setup guide found [Here](https://aws.amazon.com/blogs/gametech/setting-up-a-minecraft-java-server-on-amazon-ec2/#aws-page-content-main)

Step 1: Log into the AWS Console.

Step 2: In the top right of the console, select the AWS region appropriate for your players’ location (For example, if the playerbase is on the US West Coast, select one of the us-west regions).

Step 3: Search for “EC2” and go to the EC2 dashboard. Press Launch Instance.

Step 4: Configure the correct settings for the EC2 instance here. Give the instance a name, such as “Minecraft Server”. Select the first Ubuntu AMI.

Step 5: Under Instance type, select one based on your own server needs, including RAM requirements depending on the type of server and number of players. You can always upgrade to a larger instance if you need to at a later point.

Step 6: Under Key pair name press Create a new key pair. Enter a key name and press Create key pair. The private key will be automatically downloaded.

Step 7: Scroll to the Network settings section. Click the Edit button on the top right. This is where we will create a security group to secure our EC2 instance and prevent insecure connections. Select the default VPC, leave the subnet as no preference, and enable Auto-assign public IP. The default VPC has one public subnet in each Availability Zone so it can be chosen without any changes.

Step 8: Under Firewall, select Create security group. Change Security Group name to: “Minecraft Security Group”. Optionally add a description such as “Security group with ports open for Minecraft Server & SSH”.
Check the boxes for SSH, HTTP and HTTPS.

Step 9: Select 'Edit' in the top right of the Firewall box.

Step 10: Add another inbound rule on your security group to allow TCP traffic from anywhere (0.0.0.0/0) for port 25565. This will allow Minecraft players to join your server.

Step 11: Leave the Storage section at the default values, unless you would like a different size storage device, in which case adjust the value based on your individual needs. 

Step 12: Complete the setup and launch the instance, then select the "Connect" option on the instance management page and choose whatever option is most suitable to you. 

e.g. SSH Through Mac Terminal:
Run the command
```
cd Downloads
```
then copy and paste the command at the bottom of the screen under the "SSH Client" option. 

Once the instance is launched and you are connected in, 
```
sudo apt update
```
and 
```
sudo apt upgrade
```

The instructions for the next portion of setup are covered in [The Minecraft Instruction File](/MinecraftInstructions.md)

For setting up the webpage, see [The Webpage Setup Document](WebpageInstructions.md)
