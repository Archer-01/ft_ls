NAME := ft_ls

SRC := ft_ls.c
OBJ := $(SRC:.c=.o)

LIBFT := libft/libft.a

CC     := gcc
FORMAT := clang-format

CFLAGS      := -Wall -Wextra -Werror
FORMATFLAGS := -i

ifdef DEBUG
	CFLAGS += -Og -g
else
	CFLAGS += -fanalyzer
endif
