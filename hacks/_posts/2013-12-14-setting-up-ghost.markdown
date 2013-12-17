---
layout: posts
title: "Setting up Ghost on Apache subdomain"
---

Ghost runs on top of node.js instead of apache or nginx. If you already have a website running on apache you will need to take a few extra steps in order to allow node.js to run along side apache

>Note that I'm assuming that your having a single IP and so you're facing the problem. In case of multiple IP's node.js and apache can listen on port 80 on different IP's.

First in your VPS hosting create a subdomain on your main domain. Something like `blog.sushant.me` . Now the task we are set to achieve is simple, `sushant.me` will be served by apache on port 80 and `blog.sushant.me` will be served by node.js

Ghost comes by default ready to listen on port 2368 which will work fine. The only thing we have to configure for Ghost is the IP address. Grab your VPS IP address using the command `ifconfig`. Copy this IP address and replace all instances of 127.0.0.1 in `/path/to/ghost/config.js` with your IP address.

Next we will start Ghost in the background. I have Ghost installed in `/var/www/ghost/` so these commands will start Ghost in a `screen` session:

```
cd /var/www/ghost/
screen npm start
```

The `screen` will start it in the background so you can continue working. Once Ghost is started you can exit the screen session with `control+d` and then `a`.

Now if we access either blog.example.com or example.com, apache services our request. To change this we will create a new file say `blog` in `/etc/apace2/sites-available/`. 

```
 <VirtualHost 198.199.70.240:80>
     ServerName blog.sushant.me
     ProxyPreserveHost on
     ProxyPass / http://198.199.70.240:2368/
     DocumentRoot /var/www/ghost/
     <Directory />
     	Options FollowSymLinks
     	AllowOverride None
     	Order deny,allow
     	deny from all
     </Directory>
 </VirtualHost>
 
 ```

For “ServerName” put in your subdomain url instead of `blog.sushant.me` and also replace the IP address on the top line with your IP address.

Once you are done with this make sure you run the follwing commands:

*		sudo a2ensite example.com
*		sudo a2enmod proxy_http
*		sudo service apache2 restart

After this access `blog.sushant.me` and voila you're done.

Note: this tutorial assumes that you have properly installed ghost as stated on the shost documentation.