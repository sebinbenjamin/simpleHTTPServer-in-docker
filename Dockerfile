FROM    ubuntu

#install python
RUN apt-get update
RUN apt-get -y install python
RUN apt-get clean

# Copy html
ADD static/ /src
RUN cd /src

# Run http server on port 8080
EXPOSE  8080
CMD ["python", "-m", "http.server", "8080"]
