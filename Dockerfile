# TODO: GraphQL入れたので書き直し必要
# build the app.
FROM golang:1.22.1-bookworm as dev

# set the working dir.
WORKDIR /app

# copy the go module dependency files.
COPY go.mod go.sum ./

# copy the app source code.
COPY main.go .

# download the go module dependencies.
RUN go mod download

# expose the port.
EXPOSE 8080

# command to run the app.
CMD ["go", "run", "main.go"]