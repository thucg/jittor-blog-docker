# jittor-blog-docker

Build

```
docker build . -t jittor-blog-compiler
```

Update site
```
docker run -v "${HOME}/Documents/jittor-blog":/srv/jittor-blog -v cgservice_jittor-blog:/mnt/jittor-blog --rm jittor-blog-compiler
```

If you have changed any file in this directory, please build again.

Install hook
```
cp post-update ~/Documents/jittor-blog.git/hooks/post-update
```
