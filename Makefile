SRC		= ft_printf.c ft_printf_utils.c
OBJ		= $(SRC:.c=.o)
CC		= gcc
FLAGS	= -Wall -Werror -Wextra
NAME	= libftprintf.a
RM		= rm -f
AR		= ar rcs
%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@
$(NAME):	$(OBJ)
			$(AR) $(NAME) $(OBJ)
			ranlib $(NAME)
all:		$(NAME)
clean:		
			$(RM) $(OBJ)
fclean: 	clean
			$(RM) $(NAME)
re:			fclean all
.PHONY:		all clean fclean re