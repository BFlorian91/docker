NC = 	 \033[0m
RED =	 \033[0;31m
GREEN =  \033[0;32m

run: build
	@echo "$(GREEN)[START CONTAINER]$(NC)"
	@docker run --name Node-Environment --rm -it -p 3000:3000 node
build:
	@rm -rf app appjs
	@git clone https://github.com/BFlorian91/appjs.git
	@mv appjs app
	@docker build -t nodebuild .
	@docker build -t node -f Dockerfile_launcher .

clean:
	@echo "$(RED)** Container deleted **$(NC)"

fclean: 
	@docker image rm nodebuild
	@docker image rm node
	@rm -rf app
