SHELL := /bin/bash

build:
	@echo "Building the mage-ai-experience..."
	@docker build -t mage-ai-experience . --load

start:
	@echo "Starting the mage-ai-experience at http://localhost:6789..."
	@docker run -d -p 6789:6789 -v ${PWD}:/home/src --name mageai-container mage-ai-experience
	@echo "Done."

stop:
	@echo "Stopping the mage-ai-experience..."
	@docker stop mageai-container
	@docker rm mageai-container