NC = 	 \033[0m
RED =	 \033[0;31m
GREEN =  \033[0;32m

run: build
	@echo "$(GREEN)[START CONTAINER]$(NC)"
	@docker run -it --name tetris --privileged tetris

build:
	@docker build -t tetris .

clean:
	@echo "$(RED)** Container clean **$(NC)"
	@docker container rm -f tetris

fclean: clean
	@echo "$(RED)** Image clean **$(NC)"
	@docker image rm tetris
