include config.mk

$(NAME): $(OBJ) $(LIBFT)

$(LIBFT):
	$(MAKE) --directory=$(@D) --silent all

.PHONY: all clean fclean re format leaks

all: $(NAME)

clean:
	$(RM) $(OBJ)
	$(MAKE) --directory=$(dir $(LIBFT)) --silent clean

fclean: clean
	$(RM) $(NAME)
	$(MAKE) --directory=$(dir $(LIBFT)) --silent fclean

re: fclean all

format:
	$(FORMAT) $(FORMATFLAGS) $(SRC)

leaks:
	$(LEAKS) $(LEAKSFLAGS) ./$(NAME) ${ARGS}

.SILENT: clean fclean format
