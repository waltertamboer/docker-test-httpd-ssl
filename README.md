# docker-test-httpd-ssl

This is an experiment where an SSL certificate is automatically generated when
the httpd docker container is started. All to make development easier :-)

## Usage

I'm assuming you have a docker DNS setup as described here: 
https://www.polderknowledge.nl/2017/02/16/docker-dns/

Next run the test:

```
$ ./bin/test.sh
```

and visit the website: at https://docker-test-httpd-ssl.docker
