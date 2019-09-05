#!/bin/bash
echo "Here we go!"
read -p "Directory name? " blog_dir
mkdir $blog_dir
cd $blog_dir
# wp core download
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
# wp core config --dbhost=$dbhost --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass
echo "--dbhost=$dbhost --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass"
# chmod 644 wp-config.php
# wp core install --url=$url --title=$title --admin_name=$admin_name --admin_password=$admin_password --admin_email=$admin_email
echo "--url=$url --title=$title --admin_name=$admin_name --admin_password=$admin_password --admin_email=$admin_email"
