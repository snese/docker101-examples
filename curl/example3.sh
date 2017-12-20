#doitlive shell: /bin/zsh
#doitlive prompt: default
#doitlive speed: 2
#doitlive alias: edit="nano "

cat Dockerfile

docker build . -t test-curl 
# docker build builds a new image locally.
# -t flag sets the name tag to an image.

docker images

# We can create and run container from the image. Let’s try it with default parameters:
docker run --rm -v $(pwd)/vol:/data/:rw test-curl

# To see results saved to file run:
cat ./vol/results

clear

# Let’s try with facebook.com:
docker run --rm -e SITE_URL=https://facebook.com/ -v $(pwd)/vol:/data/:rw test-curl

# To see results saved to file run:
cat ./vol/results

