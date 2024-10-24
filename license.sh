#!/bin/bash
ip=asd
port=443

sudo -v

curl --insecure -L -X GET https://${ip}:${port}/-/client-token -o - |
sudo tee /etc/nvidia/ClientConfigToken/client_configuration_token_$(date +%d-%M-%y-%H-%M-%S).tok
sudo chmod 744 -R /etc/nvidia/ClientConfigToken/
