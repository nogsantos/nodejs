# Node JS v7.3.0

Build node v7x in my ubuntu base image [nogsantos/ubuntu](https://github.com/nogsantos/ubuntu) with extra packages.

- `nodejs`
- `build-essential`

I made this image to prepare my deploy environment for my back end node apps when working with `Docker cloud` (i think this will simplify that job). Then, I just have to create a `Dockerfile` inside my project, create my based image with my necessary packages to current project and then, configurate my deploy task.

E.g.:

```dockerfile
FROM nogsantos/node
# MAINTAINER Fabricio Nogueira nogsantos@gmail.com
COPY . /usr/src/app
# Set some envs if necessary
ENV NODE_ENV=development
ENV QUERY_LIMIT=10
ENV LANG_DEFAULT=pt_br
#Exposing port `3000` to work with Nodal*
EXPOSE 3000
# Finish
CMD [  "npm", "start" ]
```

*Take a look on the [nodal](http://nodaljs.com) project.

But, job still in progress...
