SRC = srcs/docker-compose.yml
NAME = inception

all: ${NAME}

${NAME}: ${SRC} 
	docker-compose -f ${SRC} up --build
clean: 
	docker-compose -f ${SRC} down
fclean: 
	docker-compose -f ${SRC} down --rmi all
re: fclean all