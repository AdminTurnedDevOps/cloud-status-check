FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go get github.com/AdminTurnedDevOps/cloud-status-check
RUN cd /build && git clone https://github.com/AdminTurnedDevOps/cloud-status-check.git

RUN cd /build/cloud-status-check && go build cloudstatuscheck.go
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"

ENTRYPOINT [ "/build/cloud-status-check/cloudstatuscheck", "--azure" ]
