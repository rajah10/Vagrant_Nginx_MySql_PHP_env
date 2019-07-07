## git clone 
 `cd folder`

 `vagrant up`
 #### Check Vagrantfile to uncomment provisioner path, run `vagrant provision` if need

## Setup the site-avalible 

`vagrant shh `

`sudo nano /etc/nginx/sites-available/example.com`

Paste bellow code into example.com file

```
server {
        listen 80;
        root /var/www/files;
        index index.php index.html index.htm index.nginx-debian.html;
        server_name example.com;

        location / {
                try_files $uri $uri/ =404;
        }

        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/run/php/php7.2-fpm.sock;
        }

        location ~ /\.ht {
                deny all;
        }
}
```

### Enable the config file

`sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/`

### Unlinked the defalut config file

`sudo unlink /etc/nginx/sites-enabled/default`

Run `sudo nginx -t` to test, if any error pop up fix it.

Reload nginx `sudo systemctl reload nginx`


## Edit host computer hosts file

Get VM ip address, run `ifconfig`

Run `sudo nano etc/hosts`, 
Add `VM_IP example.com`

Save and exit 

Open borswer and type example.com


