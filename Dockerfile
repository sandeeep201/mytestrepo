# Step 1: Use the custom base image from ECR
FROM 122265685920.dkr.ecr.us-east-1.amazonaws.com/sandeep:latest

# Step 2: Update package manager and install httpd
RUN yum update -y && yum install -y httpd

# Step 3: Set the working directory to /var/www
WORKDIR /var/www/

# Step 4: Copy the source code into /var/www
COPY ./src /var/www/

# Step 5: Expose port 80 for HTTP traffic
EXPOSE 80

# Step 6: Start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]

