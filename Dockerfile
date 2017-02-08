#FROM test Docker which image your image is basded on.
#RUN installs fortunes program into the image.
#CMD tells the image the final command to run after its environment is set up.
FROM docker/whalesay:latest
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay
