# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnachit <mnachit@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/19 12:50:00 by mnachit           #+#    #+#              #
#    Updated: 2023/01/27 11:50:46 by mnachit          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME ='philo'
FLAGS = -Wall -Wextra -Werror 
CC = cc
RM = rm -rf
SRC = utils.c \
		routine.c \
		philo.c \
		init.c \
		create_threads.c 
OBJ = $(SRC:.c=.o)
$(NAME): $(OBJ)
	cc $(FLAGS) $(OBJ) -o $(NAME) -g
	@echo "Projet Mahomed NACHIT"
all : $(NAME)
%.o: %.c
	cc $(FLAGS) -c $< -o $@ -g
clean:
	$(RM) $(OBJ)
	@echo succefully deleted 
fclean: clean
	$(RM) $(NAME)
	@echo succefully deleted 
re : fclean all 