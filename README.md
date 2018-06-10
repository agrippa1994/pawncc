PawnCC Docker Image [![Build Status](https://travis-ci.org/agrippa1994/pawncc.svg?branch=master)](https://travis-ci.org/agrippa1994/pawncc)
=====================

The Dockerfile builds an image that compiles the [PawnCC](https://github.com/compuphase/pawn) compiler.

Usage
-------
* Pull the image from the official Docker registry
```
docker pull agripp1994/pawncc
```
* Compile an application (see main.pwn)
```
docker run -ti --rm -v $(pwd):/example $DOCKER_USERNAME/pawncc pawncc /example/main.pwn -o/example/main.amx
```
* The compiler will produce an *.amx file that can be executed by the interpreter
```
docker run -ti --rm -v $(pwd):/example $DOCKER_USERNAME/pawncc pawnrun /example/main.amx
```
* If the execution succeeds the exit code will be non zero (0). Use ```$_```to verify the exit code
```
echo $? 
```
