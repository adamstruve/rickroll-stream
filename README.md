# rickroll-stream
A simple Dockerfile to spin up an Icecast server that just streams a loop of Never Gonna Give You Up. It downloads the song from Archive.org.

```
docker build -t rickroll .
```

```
docker run -p 8000:8000 rickroll
```
