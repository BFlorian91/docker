NC = 	 \033[0m
RED =	 \033[0;31m
GREEN =  \033[0;32m

run: build
	@echo "$(GREEN)[START CONTAINER]$(NC)"
	@docker run --name Node-Environment -it -p 3000:3000 node

build:
	@rm -rf app appjs
	@git clone https://github.com/BFlorian91/appjs.git
	@mv appjs app
	@docker build -t ft-node:on-build .
	@docker build -t node -f Dockerfile_launcher .

clean:
	@echo "$(RED)** Container deleted **$(NC)"
	@docker container rm -f Node-Environment

fclean: 
	@echo "$(RED)** Image / app are deleted **$(NC)"
	@docker image rm $(docker image ls) 
	@rm -rf app
	@clean
