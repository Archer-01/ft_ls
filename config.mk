NAME := ft_ls

SRC := ft_ls.c
OBJ := $(SRC:.c=.o)

LIBFT := libft/libft.a

CC     := gcc
FORMAT := clang-format

CFLAGS      := -Wall -Wextra -Werror -fanalyzer
FORMATFLAGS := -i
