#!/bin/bash -e
sudo sh -c "echo \"lxsession -s Lubuntu -e LXDE\" > /home/sbl/.xsession"
sudo sh -c "chmod +x /home/sbl/.xsession"
sudo chown sbl:sbl /home/sbl/.xsession
sudo service xrdp restart



