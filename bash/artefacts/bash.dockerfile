# link: https://www.gnu.org/software/bash/manual/
FROM ubuntu:latest

# Update the list of packages
RUN apt-get update

# Install Bash
RUN apt-get install -y bash

# Start Bash
CMD [ "bash" ]