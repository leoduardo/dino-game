# Use an official GCC image as a base image
FROM gcc:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local source files to the container
COPY . .

# Compile the C code
RUN gcc -o myapp myapp.c

# Specify the command to run on container startup
CMD ["./myapp"]
