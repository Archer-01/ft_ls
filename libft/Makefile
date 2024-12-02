include config.mk

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $@ $?

$(OBJ): $(HEADER)

.PHONY: all clean fclean re

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.SILENT: clean fclean
