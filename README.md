
# Passwall2

this is repository for all action in passwall2 service

[![AGPL License](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://choosealicense.com/licenses/agpl-3.0)
![GitHub last commit](https://img.shields.io/github/last-commit/saeedkefayati/openwrt-passwall2)
![GitHub top language](https://img.shields.io/github/languages/top/saeedkefayati/openwrt-passwall2)
![GitHub repo size](https://img.shields.io/github/repo-size/saeedkefayati/openwrt-passwall2)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/saeedkefayati/openwrt-passwall2)


<figure>
  <pre role="img" aria-label="ASCII BANNER" style="text-align:center; font-size:0.75rem;">
.------------------------------------------------------------.
|                                                            |
|                                                            |
|   _____ _____ _____ _____ _ _ _ _____ __    __       ___   |
|  |  _  |  _  |   __|   __| | | |  _  |  |  |  |     |_  |  |
|  |   __|     |__   |__   | | | |     |  |__|  |__   |  _|  |
|  |__|  |__|__|_____|_____|_____|__|__|_____|_____|  |___|  |
|                                                            |
|                                                            |
'------------------------------------------------------------'
  </pre>
</figure>

<br/>


## Smart Installation (Recommend)

1. Install Dependencies<br/>
```bash
  opkg install git git-http
```

<br/>

2. Usage with this command<br/>
- Github:
```bash
sh <(wget -qO- https://raw.githubusercontent.com/saeedkefayati/openwrt-passwall2/main/install.sh)
```

- Githack:
```bash
sh <(wget -qO- https://raw.githack.com/saeedkefayati/openwrt-passwall2/main/install.sh)
```

- jsdelivr CDN:
```bash
sh <(wget -qO- https://cdn.jsdelivr.net/gh/saeedkefayati/openwrt-passwall2@main/install.sh)
```

- statically CDN
```bash
sh <(wget -qO- https://cdn.statically.io/gh/saeedkefayati/openwrt-passwall2/main/install.sh)
```

<br/>

## Manual Installation

1. Install Dependencies<br/>
```bash
  cd /root
```
```bash
  wget -O passwall2.zip https://github.com/saeedkefayati/openwrt-passwall2/archive/refs/heads/main.zip
```
```bash
  opkg install unzip
```


2. Unzip Dependencies<br/>
```bash
  unzip passwall2.zip && rm -rf passwall2.zip
```
```bash
  mv passwall2-main passwall2
```

3. Executable Dependencies<br/>
```bash
  find ./passwall2 -type f -name "*.sh" -exec chmod +x {} \;
```
```bash
  cd passwall2 && ./main.sh
```

4. Add Shortcut Command (optional) - can use passwall2 command<br/>
```bash
  echo '#!/bin/sh' > /usr/bin/passwall2 && echo 'cd /root/passwall2 && ./main.sh' >> /usr/bin/passwall2 && chmod +x /usr/bin/passwall2
```

<br/>

## Special Thanks  

- [OpenWrt](https://github.com/openwrt)
- [xiaorouji](https://github.com/xiaorouji/openwrt-passwall)
- [moetayuko](https://github.com/moetayuko/openwrt-passwall-build)
- [Ramtiiin](https://github.com/Ramtiiin)
- [amirhosseinchoghaei](https://github.com/amirhosseinchoghaei)
