# beats

Prints the current _[Internet Time](https://en.wikipedia.org/wiki/Swatch_Internet_Time)_ in beats.  
Welcome to 1998!

Uses the [internettime](https://github.com/mapitman/internet-time) package.

## Usage
    
```sh
docker run --rm mapitman/beats
```

Add an alias to your `.bashrc`!

```sh
alias beats="docker run --rm mapitman/beats"
```
  
## Build the Docker image

```sh
git clone git@github.com:mapitman/beats
make docker

# run the container to test it out
make run
```

## Build natively

```sh
git clone git@github.com:mapitman/beats
make

# if you want to install the binary in your $GOPATH/bin
make install
```


