# First Dockerfile.
FROM ubuntu
LABEL MAINTAINER dj@devops.com
RUN mkdir /codeapps
COPY Sample.sh /codeapps/Sample.sh
COPY testfile /codeapps/testfile
RUN chmod +x /codeapps/Sample.sh
WORKDIR /codeapps
ENTRYPOINT ["sh","/codeapps/Sample.sh"]
CMD ["/codeapps/testfile"]
#CMD sh /codeapps/Sample.sh /codeapps/testfile
