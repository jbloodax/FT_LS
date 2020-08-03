# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcarmelo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/13 19:35:02 by lcarmelo          #+#    #+#              #
#    Updated: 2020/03/14 16:53:49 by lcarmelo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILE_LS 			= \
						main

DIR_SRC				= ./src/
DIR_INC				= ./includes/
DIR_LIB				= ./libft/

SRC_LS 				= \
						$(addprefix $(DIR_SRC), $(addsuffix .c, $(FILE_LS)))

OBJ_LS 				= \
				  		$(addsuffix .o, $(FILE_LS))

CC 	   				= gcc
FT_LS 				= ft_ls
#CFLAGS 	   		= -Wall -Werror -Wextra -O2 -I$(DIR_INC) -I$(DIR_LIB)$(DIR_INC)
CFLAGS 	   			=  -O2 -I$(DIR_INC) -I$(DIR_LIB)$(DIR_INC)

all: ls

lib:
	@make -C $(DIR_LIB)
	@cp libft/libft.a ./

obj:
	@$(CC) $(CFLAGS) -c $(SRC_LS)

ls: lib obj
	@$(CC) $(CFLAGS) -o $(FT_LS) $(OBJ_LS) libft/libft.a

clean:
	@make clean -C $(DIR_LIB)
	@rm -f $(OBJ_LS)
	@rm -f libft.a

fclean: clean
	@make fclean -C $(DIR_LIB)
	@rm -f $(FT_LS)

re: fclean all

compile: re
	./$(FT_LS)

.PHONY: all clean fclean re compile