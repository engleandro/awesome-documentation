# link: https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu

FROM ubuntu:latest AS BUILDER

# Update the list of packages
RUN apt-get update

# Install pre-requisite packages.
RUN apt-get install -y wget apt-transport-https software-properties-common

# Get the version of Ubuntu
RUN source /etc/os-release

# Download the Microsoft repository keys
RUN wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Register the Microsoft repository keys
RUN dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository keys file
RUN rm packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com
RUN apt-get update

# Install PowerShell
RUN apt-get install -y powershell

# Start PowerShell
CMD [ "pwsh" ]