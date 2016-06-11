FROM    ubuntu

# Copy html
ADD static/ /src
RUN cd /src

# Run http server on port 8080
EXPOSE  8080
CMD ["python", "-m", "simpleHTTPServer", "8080"]
