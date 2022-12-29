FROM golang:latest

WORKDIR /simplegolangcrud

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . .

# RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -o /simplegolangcrud
RUN go build -o main .

EXPOSE 8000

CMD [ "./main" ]