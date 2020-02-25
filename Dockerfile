FROM golang:1.13

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
RUN apt-get update && apt-get install -y \
		jq \
	&& rm -rf /var/lib/apt/lists/*
