# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dancuenc <dancuenc@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/12 16:39:10 by dancuenc          #+#    #+#              #
#    Updated: 2025/07/31 18:56:25 by dancuenc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    = ft_printf.a

CC      = cc
CFLAGS  = -Wall -Wextra -Werror

SRC     = ft_printf.c \
          ft_print_c.c \
          ft_print_s.c \
          ft_print_p.c \
          ft_print_u.c \
          ft_print_x.c \
          ft_printX.c \
          ft_putnbr_base.c \
          ft_putnbr.c

OBJ     = $(SRC:.c=.o)

# ============================================================================
# → Build rules
# ============================================================================

all:
	@echo "\033[1;35m→ Checking build for ft_printf...\033[0m"
	@if [ ! -f $(NAME) ]; then \
		echo "\033[1;34m→ Building ft_printf...\033[0m"; \
	fi
	@$(MAKE) $(NAME)
	@echo "\033[1;32m✓ ft_printf build completed successfully\033[0m"

$(NAME): $(OBJ)
	@echo "\033[1;34m→ Archiving ft_printf.a\033[0m"
	@ar rcs $(NAME) $(OBJ)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

# ============================================================================
# → Cleaning rules
# ============================================================================

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
