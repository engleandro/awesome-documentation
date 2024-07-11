FROM ubuntu:latest AS BUILDER

RUN apt-get -y update \
    && apt-get install -y curl

RUN curl -sfL https://get.k3s.io | sh - 

# Check for Ready node, takes ~30 seconds 
CMD ["k3s", "kubectl", "get", "node"]
