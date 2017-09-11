```
docker build -t nginx /home/...
```


```
docker run --restart="always" --name "proxypass" -p 8081:80 -d  nginx
```
