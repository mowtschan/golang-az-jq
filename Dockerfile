FROM golang:1.13

RUN apt-get install -y \
		ca-certificates curl apt-transport-https gnupg
RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ buster main" > /etc/apt/sources.list.d/azure-cli.list

RUN apt-get update && apt-get install -y \
		azure-cli \
		jq \
	&& rm -rf /var/lib/apt/lists/*

