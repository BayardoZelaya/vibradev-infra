# Use the official Golang image as the base image
FROM golang:1.24-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY go.mod .
COPY main.go .

# Build the Go application
RUN go build -o hello-go .

# Set an environment variable for the greeting (this can be overridden at runtime)
ENV GREETING="Hello from Dockerized Go Service!"

# Expose port 8080 to the outside world
EXPOSE 8081

# Define the command to run the application
CMD ["./hello-go"]