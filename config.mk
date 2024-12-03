NAME := ft_ls

SRC := ft_ls.c
OBJ := $(SRC:.c=.o)

LIBFT := libft/libft.a

CC     := gcc
FORMAT := clang-format
LEAKS  := valgrind

CFLAGS      := -Wall -Wextra -Werror
FORMATFLAGS := -i
LEAKSFLAGS  := --leak-check=full \
			   --track-origins=yes \
			   --show-leak-kinds=all

ifdef DEBUG
	CFLAGS += -Og -g
else
	CFLAGS += -fanalyzer
endif
