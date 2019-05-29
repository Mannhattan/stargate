# stargate
[![GitHub issues](https://img.shields.io/github/issues/Mannhattan/stargate.svg)](https://github.com/Mannhattan/stargate/issues)
[![GitHub stars](https://img.shields.io/github/stars/Mannhattan/stargate.svg)](https://github.com/Mannhattan/stargate/stargazers)
[![GitHub license](https://img.shields.io/github/license/Mannhattan/stargate.svg)](https://github.com/Mannhattan/stargate/blob/master/LICENSE)

This mini reverse proxy docker image (based on nginx.alpine) redirects all the web traffic to specified endpoints providing SSL encryption, gzip response compression and HTTP/2 request encoding along the way. Response is equipped with certain headers for improved security. All requests over http (port 80) will be redirected to https (port 443). Load balancing will be added soon!

## Installation

1. Clone repository to your own drive:

```bash
git clone https://github.com/Mannhattan/stargate.git
```

2. Put your SSL certificates in config/ssl folder.

3. Build docker image:

```bash
docker build . -t stargate
```

4. Start docker container:

```bash
docker run -d -p 80:80 -p 443:443 --name stargate stargate
```

5. Voila!


## License
[MIT](https://choosealicense.com/licenses/mit/)