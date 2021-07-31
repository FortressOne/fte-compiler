Build Docker image

```
docker build --tag=fte-compiler .
```


Clone FortressOne FTE fork and symlink to fte-compiler/fteqw-code/

```
git clone git@github.com:FortressOne/fteqw-code.git
```

Pull latest commits:

```
git svn fetch
git svn rebase
```


Run bash on container with fte-config user and repo mounted

```
docker run \
  --interactive \
  --tty \
  --user fte-compiler \
  --env FTE_CONFIG=fortressone \
  --mount type=bind,source="$(pwd)/fteqw-code",target=/home/fte-compiler/fteqw-code \
  --mount type=bind,source="$(pwd)/htdocs",target=/home/fte-compiler/htdocs \
  fte-compiler \
  /bin/bash
```


Run FTE build setup script

```
cd fteqw-code
./build_setup.sh
```


Build

```
./build_wip.sh
```

Output will be on host machine in htdocs/


Todo:
- Run build_wip non-interactively in build stage.
- Fix windows not compiling.
