#SECURE-SSH.SH
#AUTHOR BHOSKER3
#Creates a new ssh user called $1
#Adds a public key to that users authorized keys file
#Removes roots ability to ssh in

sudo useradd sys265
sudo passwd -d sys265
sudo mkdir /home/sys265/.ssh
sudo cp /home/ben/sys265-scripts/linux/public-keys/sys265.pub /home/sys265/.ssh/authorized_keys
sudo chmod 700 /home/sys265/.ssh
sudo chmod 600 /home/sys265/.ssh/authorized_keys
sudo chown -R sys265:sys265 /home/sys265/.ssh

systemctl restart sshd 
