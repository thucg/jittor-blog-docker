# jittor-blog-docker

Build

```
docker build . -t jittor-blog
```

First run
```
docker run -v "${HOME}/Documents/jittor-blog":/srv/jittor-blog --restart unless-stopped --network cgservice_frontend --name jittor-blog -d jittor-blog
```

Update and restart
```
docker restart jittor-blog
```

If you have changed run.sh, please
```
git commit
git push
docker build ...
docker stop jittor-blog
docker run ...
```
