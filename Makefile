# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ehabes <ehabes@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/12 22:56:49 by ehabes            #+#    #+#              #
#    Updated: 2024/10/27 18:26:26 by ehabes           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.SILENT:

CC = cc

CFLAGS = -Wall -Wextra -Werror

SRCS = main.c ft_isalpha.c ft_toupper.c ft_tolower.c \
		ft_isdigit.c ft_isalnum.c ft_strchr.c \
		ft_isascii.c ft_strrchr.c ft_isprint.c \
		ft_strlen.c ft_strncmp.c ft_memset.c \
		ft_memchr.c ft_bzero.c ft_memcmp.c \
		ft_memcpy.c ft_strnstr.c ft_memmove.c \
		ft_strlcpy.c ft_strlcat.c ft_atoi.c \
		ft_calloc.c	ft_strdup.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c \
		ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		ft_itoa.c
	
OBJS = $(SRCS:.c=.o)

HEADER = libft.h

NAME = libft.a

LIBS = -L. -lft

all: $(NAME) program #TODO: program dosyaları repo'ya gitmeyecek!
		./program

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

%.o:%.c $(HEADER)
		$(CC) $(CFLAG) -c $< -o $@
		
clean: 
		rm -f $(OBJS) main.o

fclean: clean
		rm -f $(NAME) program

re: fclean all

program: main.o #TODO: Bu kural daha sonra silinecek!
		$(CC) $(CFLAG) -o program main.o $(LIBS)

.PHONY: all clean fclean re program
