NC = 	 \033[0m
RED =	 \033[0;31m
GREEN =  \033[0;32m

run: build
	@echo "$(GREEN)[START CONTAINER]$(NC)"
	@docker run -it --name C-Environment --privileged c-env

build:
	@docker build -t c-env .

clean:
	@echo "$(RED)** Container clean **$(NC)"
	@docker container rm -f C-Environment

fclean: clean
	@echo "$(RED)** Image clean **$(NC)"
	@docker image rm c-env
