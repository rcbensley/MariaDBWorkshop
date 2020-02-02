sudo cp /vagrant/my.cnf /etc/my.cnf

sudo cp /vagrant/MariaDB.repo /etc/yum.repos.d/MariaDB.repo

sudo dnf update -y
sudo dnf upgrade -y
sudo dnf install -y python3-PyMySQL sysbench vim tmux wget
sudo dnf install -y MariaDB-server MariaDB-backup
sudo systemctl enable mariadb
