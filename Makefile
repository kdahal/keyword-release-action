KEYWORD=FIXED

sudo run: build
	sudo docker run --rm keyword-release-action $(KEYWORD)
sudo build: 
	sudo docker build --tag keyword-release-action .
sudo test:
	./entrypoint.sh $(KEYWORD)

