NAME        = minishell

SRC_DIR     = src
LIBFT_DIR   = ./libft
OBJ_DIR     = obj

LIBFT       = $(LIBFT_DIR)/libft.a

SRCS        = main.c \

SRC_PATHS   = $(addprefix $(SRC_DIR)/, $(SRCS))
OBJS        = $(SRCS:%.c=$(OBJ_DIR)/%.o)

CC          = cc
CFLAGS      = -Wall -Werror -Wextra
INCLUDES    = -I. -I$(LIBFT_DIR)
RM          = rm -f

all:
	@echo "\033[1;35m→ Checking build for minishell...\033[0m"
	@if [ ! -f $(NAME) ]; then \
		echo "\033[1;34m→ Building minishell...\033[0m"; \
	fi
	@$(MAKE) $(NAME)
	@echo "\033[1;32m✓ minishell build completed successfully\033[0m"

$(NAME): $(LIBFT) $(OBJS)
	@echo "\033[1;34m→ Linking minishell\033[0m"
	@$(CC) $(CFLAGS) $(INCLUDES) $(OBJS) $(LIBFT) -o $(NAME)

$(LIBFT):
	@if [ ! -f $(LIBFT) ]; then \
		make -C $(LIBFT_DIR); \
	else \
		echo "\033[1;32m✓ Libft already up to date\033[0m"; \
	fi

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@echo "\033[1;33m→ Cleaning object files...\033[0m"
	@$(RM) -r $(OBJ_DIR)
	@make clean -C $(LIBFT_DIR)

fclean: clean
	@echo "\033[1;33m→ Cleaning executables...\033[0m"
	@$(RM) $(NAME)
	@make fclean -C $(LIBFT_DIR)

re: fclean all

.PHONY: all clean fclean re