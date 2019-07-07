## git clone 
 `cd folder`

 `vagrant up`
 #### Check Vagrantfile to uncomment provisioner path, run `vagrant provision` if need

## Setup the config file and PHP

`vagrant shh `

### Configure the PHP Processor

Open `sudo nano /etc/php/7.2/fpm/php.ini` 

Uncomment and change 1 to 0 `cgi.fix_pathinfo=0`

Restart `sudo systemctl restart php7.2-fpm`

### Configure the vhost file

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


