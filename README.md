Build Docker image

```
docker build --tag=fte-compiler .
```


Checkout FTE from SVN

```
svn checkout https://svn.code.sf.net/p/fteqw/code/trunk fteqw-code
```


Run bash on container with fte-config user and repo mounted

```
docker run -it --user fte-compiler --mount type=bind,source="$(pwd)/fteqw-code",target=/home/fte-compiler/fteqw-code --mount type=bind,source="$(pwd)/htdocs",target=/home/fte-compiler/htdocs fte-compiler /bin/bash
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
