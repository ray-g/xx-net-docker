# XX-Net Docker
XX-Net Docker is to dockerize [XX-Net](https://github.com/XX-net/XX-Net).

## Build

Run the following code to build this docker image and tag it as `xx-net`.

``` shell
docker build -t xx-net --rm .
```

## Run

This docker exposed 1080, 8085 and 8087 ports. Working dir is `/xx-net`. Data folder is `/xx-net/data`.
It is recommended to have your own data file saved in e.g. a `data` folder in current directory.

After successfully build the image, run the docker with

``` shell
docker run -d --restart=always -p 1080:1080 -p 8085:8085 -p 8087:8087 -v data:/xx-net/data --name xx-net-service xx-net
```
