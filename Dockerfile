# Use Ubuntu as base image
FROM ubuntu:22.04

# Install OpenJDK and other necessary packages
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y wget nano && \
    apt-get clean

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

# Set working directory
WORKDIR /app

# Copy the Java source file
COPY SimpleApp.java .

# Compile the Java program
RUN javac SimpleApp.java

# Set the default command to run the Java app
CMD ["java", "SimpleApp"]
