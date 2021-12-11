sudo yum update httpd
sudo yum install httpd -y

sudo systemctl start httpd
sudo systemctl status httpd

sudo mkdir -p /var/www/olehshalavylo.com/html
sudo mv /vagrant/index.html /var/www/olehshalavylo.com/html/
sudo mv /vagrant/olehshalavylo.com.conf /etc/httpd/conf.d/
sudo cat /vagrant/helper.txt >> /etc/httpd/conf/httpd.conf
sudo setenforce 0
sudo systemctl restart httpd
