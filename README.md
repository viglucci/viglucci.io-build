# viglucci.io-build
Simple dockerfile that builds an image that can be used for building static Jekyll blogs (such as viglucci.io).

## Clone
```bash
git clone https://github.com/viglucci/viglucci.io-build.git .
```

## Build Image

```bash
docker build -t viglucci.io-build --no-cache .
```

## Run Commands

```bash
docker run --rm -v "C:path/to/src:/opt" viglucci.io-build gulp build:production
```
