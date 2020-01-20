# script to enable gui in ubuntu desktop

sudo systemctl enable graphical.target --force
sudo systemctl set-default graphical.target 
