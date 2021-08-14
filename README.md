# fte-compiler

Debian docker container to reliably build linux and windows FTE.


## Build Docker image

```
docker build --tag=fte-compiler .
```


## Get FortressOne fteqw-code fork

In root directory of this repo clone FortressOne FTE repo:

```
git clone git@github.com:FortressOne/fteqw-code.git
```

Or alternatively, symlink it there:

```
ln -s ~/path/to/fteqw-code .
```


## Get latest code

From the fteqw-code repo directory:

```
git svn rebase
git rebase
```

Note: don't pull, it messes things up.


## Compile FortressOne client

```
docker run \
  --mount type=bind,source="$(pwd)/fteqw-code",target=/home/fte-compiler/fteqw-code \
  --mount type=bind,source="$(pwd)/htdocs",target=/home/fte-compiler/htdocs \
  fte-compiler
```

Output will be on host machine in htdocs/. Includes debug builds.
