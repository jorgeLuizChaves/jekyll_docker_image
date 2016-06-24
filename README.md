# Fedora + Jekyll Container Recipe

This build create a jekyll image ready to work with.

## CREATE THE IMAGE
### STEPS
  - run docker-compose
  - access the container
  - run the jekyll

Run docker-compose
```shell
$ docker-compose up -d
```

Access the container
```shell
$ docker exec -it jekyll bash
```

Run Jekyll (you need to be at folder project)
```shell
$ jekyll serve
```



### parallels Machine
To run in your virtual machine parallels you'll need to put the parameter --host to start jekyll, e.g.:
```shell
$ jekyll serve --host=0.0.0.0
```
