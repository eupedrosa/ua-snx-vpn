
Universidade de Aveiro - VPN Linux client
=========================================
A quick and easy way to manage your UA's VPN connection.

## Overview
This package provide the `ua-vpn` script to help you manage the access 
to [University of Aveiro CheckPoint VPN server][1] through the command line.

This was developed to work with Ubuntu 18.04 and 20.04.
Other distributions were not tested.

## Requirements

You will need to have [docker][2] installed.
The linux client, `snx`, requires 32bit libraries to be installed.
Using [docker][2] we can maintain this dependencies separated from your 64bits host system.

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

```bash
curl -Lks https://raw.githubusercontent.com/eupedrosa/ua-snx-vpn/master/ua-vpn | bash -s update
```


[1]: https://www.ua.pt/pt/stic/teletrabalho_vpn
[2]: https://www.docker.com/
[3]: https://docs.docker.com/engine/install/ubuntu/
