# Debian Image with on-my-posh 

Need to tests shell scripts on a Mac? The shell is a little bit different. So i started to create this image to work with linux on a Mac 

## Build local

docker build -t debops . 


## Start the Image

docker run --rm \
        -v "$(pwd)":/root/work \
        -w /root/work \
        -it debops


