FROM golang

# Get gihub repo of application for a simple web server
RUN go get github.com/vijay1811/myserver

# install the application
RUN go install github.com/vijay1811/myserver

# run our server now
ENTRYPOINT /go/bin/myserver

# service runs at 5000
EXPOSE 5000
