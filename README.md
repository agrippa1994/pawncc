PawnCC Docker Image [![Build Status](https://travis-ci.org/agrippa1994/pawncc.svg?branch=master)](https://travis-ci.org/agrippa1994/pawncc)
=====================

The Dockerfile builds an image that compiles the [PawnCC](https://github.com/compuphase/pawn) compiler.

Usage
-------
* Checkout the repository
* Change the current directory to the repository's checkout folder
* Built the image
```
docker build . -t pawncc
```
* Run the image
```
docker run -ti --rm pawncc
```
