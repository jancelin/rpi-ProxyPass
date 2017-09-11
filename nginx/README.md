```
docker build -t nginx https://github.com/jancelin/rpi-ProxyPass.git#master:/nginx
```


```
docker run --restart="always" --name "proxypass" -p 8081:80 -d  nginx
```
