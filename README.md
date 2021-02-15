
Universidade de Aveiro - VPN Linux manager
==========================================
A quick and easy way to manage your UA's VPN connection.

## Overview
This package provide the `ua-vpn` script to help you manage the access 
to [University of Aveiro CheckPoint VPN server][1] through the command line.

This was developed to work with Ubuntu 18.04 and 20.04.
Other distributions were not tested.

## Requirements

You will need to have [docker][2] installed.
The linux client, `snx`, requires 32 bit libraries to be installed.
Using [docker][2] we can maintain these dependencies separated from your 64 bits host system.

Please follow [docker's install instructions][3] to have `docker` in your system.
Make sure you can use `docker` as non-root.
```bash
sudo usermod -aG docker your-user
```

You will also need `curl`.
```bash
sudo apt install curl
```

## Quick Install

Clone this repository
```bash
git clone https://github.com/eupedrosa/ua-snx-vpn.git
```

Download [snx_install_linux31.sh][4] and put it under the `docker` directory.

Build the docker image
```bash
cd ua-snx-vpn/docker
docker build -t ua-snx-vpn
```

Now copy the script to you $PATH, e.g.
```bash
cd ..
sudo cp ua-vpn /usr/local/bin/ua-vpn
sudo chmod +x /usr/local/bin/ua-vpn
```


[1]: https://www.ua.pt/pt/stic/teletrabalho_vpn
[2]: https://www.docker.com/
[3]: https://docs.docker.com/engine/install/ubuntu/
[4]: https://supportcenter.checkpoint.com/supportcenter/portal/user/anon/page/default.psml/media-type/html?action=portlets.DCFileAction&eventSubmit_doGetdcdetails&fileid=22824
