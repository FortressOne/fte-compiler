Build Docker image

```
docker build --tag=fte-compiler .
```

Checkout FTE from SVN

```
svn checkout https://svn.code.sf.net/p/fteqw/code/trunk fteqw-code
```



Fetch the SVN branches to the local Git repo

    git svn fetch

Merge SVN changes into git repo

    git svn rebase

Push changes to github

    git push

Compile with Docker

    docker run -it --mount type=bind,source="$(pwd)"/trunk,target=/fteqw fte-compiler /bin/bash -c "./build_setup.sh && ./build_wip.sh"
