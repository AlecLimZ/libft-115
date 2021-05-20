# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jacklearn <marvin@42.fr>                   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/10 10:20:44 by jacklearn         #+#    #+#              #
#    Updated: 2021/05/20 13:45:30 by leng-chu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a
SRC		=	ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strlcat.c \
			ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c \
			ft_memmove.c ft_memchr.c ft_memcmp.c ft_strchr.c \
			ft_strrchr.c ft_strnstr.c ft_atoi.c ft_isalpha.c ft_isdigit.c \
			ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c \
			ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c \
			ft_split.c ft_itoa.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
BONUS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
			ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
CC		=	gcc -Wall -Wextra -Werror
OBJ		=	$(SRC:%.c=%.o)
OBJB	=	$(BONUS:%.c=%.o)

all:	$(NAME)

$(OBJ):	$(SRC)
	$(CC) -I. -c $^

$(OBJB): $(BONUS)
	$(CC) -I. -c $^

$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $@

bonus: $(OBJ) $(OBJB)
	ar rcs $(NAME) $(OBJ) $(OBJB)

clean:
	rm -rf $(OBJ) $(OBJB)

fclean:	clean
	rm -rf $(NAME)
	rm -rf libft.so

re:	fclean all

.PHONY:	all clean fclean re bonus
