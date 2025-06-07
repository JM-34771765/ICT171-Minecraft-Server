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
wget https://raw.githubusercontent.com/JM-34771765/ICT171-Server-Project/refs/heads/main/index.html
```
Then run the command 
```
sudo cp index.html /var/www/html/index.html
```

This should replace the default apache2 index file with the current version of the index file from this repository. 

Step 3: In order for some of the images in the file to render correctly, you will need to also download image files into the /var/www/html directory. 
You can do this using the same method as the index file, using
```
wget https://raw.githubusercontent.com/JM-34771765/ICT171-Server-Project/refs/heads/main/minecraftImage.png 
```
then
```
sudo cp minecraftImage.png /var/www/html/
```
This should move the image into the correct directory so that the index file can properly reference it. 

<hr>

## Creating a Domain ##

For this project, I have also registered a domain for the Webpage and server. The instructions below are for setting up a domain with Cloudflare.

Step 1: Go to the [Cloudflare Domain Search Website](https://domains.cloudflare.com) and search for your desired domain. The domain for this project is listed [Here](README.md)

Step 2: Select your desired domain and complete the payment process. Create an account with Cloudflare if neccessary. 

Step 3: Navigate to the "Manage Domains" Section of the "Domain Management" menu, within your Cloudflare Dashboard for your account. Select "Manage" next to the domain you just registered. 

Step 4: Under the "Quick Actions" menu, select "Update DNS Configuration". 
This should navigate you to the DNS Records for your domain.

Under Type, Select A (should be default)
In the 'Name' Field, type '@'
Under the 'IPv4 address' field, copy and past your EC2 Instance's IPv4 Address (found under your instance's summary page)

Save the Record. This will ensure that your domain now connects to your server. 

You can also follow Cloudflare's reccommended steps to add more records, however they are not required for the server to run. 

Step 5: You may need to adjust your SSL/TLS Encryption mode. 
To do this, navigate to the "SSL/TLS" menu, and select the "Overview" section.

You should see a segment on the page showing your current encryption mode. Select the "configure" button within the segment, then scroll down and select "Full". 

Note: if you did not assign an elastic IP on Amazon EC2, you may need to edit your A record to update the IP Address each time you launch your instance. 
