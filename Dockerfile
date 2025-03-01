
# Use Alpine Linux as the base image
FROM alpine:latest

# Install necessary dependencies (bash, curl, jq, AWS CLI)
RUN apk add --no-cache bash curl jq aws-cli

# Create an /app directory
WORKDIR /app

# Copy the script into the container
COPY fetch_metadata.sh /app/fetch_metadata.sh

# Give execute permissions to the script
RUN chmod +x /app/fetch_metadata.sh

# Use ENTRYPOINT to run the script with passed arguments
ENTRYPOINT ["/app/fetch_metadata.sh"]
