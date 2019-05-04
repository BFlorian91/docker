NC = 	 \033[0m
RED =	 \033[0;31m
GREEN =  \033[0;32m

run: build
	@echo "$(GREEN)[START CONTAINER]$(NC)"
	@docker run --name gotty -it -p 8080:8080 gotty

build:
	@docker build -t gotty .


clean:
	@echo "$(RED)** Container deleted **$(NC)"
	@docker container rm -f gotty

fclean: clean
	@echo "$(RED)** Image deleted **$(NC)"
	@docker image rm gotty

