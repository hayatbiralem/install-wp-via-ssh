#!/bin/bash
echo "Here we go!"
read -p "Directory name? " blog_dir
read -p "DB Host?" dbhost
read -p "DB Name?" dbname
read -p "DB User?" dbuser
echo -n "DB Password?"
read -s dbpass
read -p "Domain?" url
read -p "Title?" title
read -p "Admin Username?" admin_name
echo -n "Admin Password?"
read -s admin_password
read -p "Admin Email?" admin_email
mkdir $blog_dir
cd $blog_dir
wp core download
wp core config --dbhost=$dbhost --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass
chmod 644 wp-config.php
wp core install --url=$url --title=$title --admin_name=$admin_name --admin_password=$admin_password --admin_email=$admin_email
cd wp-content
mkdir uploads
chgrp web uploads/
chmod 775 uploads/
