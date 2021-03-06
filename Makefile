SRCS = main.c \
	   setup.c \
	   run.c \
	   bind.c \
	   mandelbrot.c \
	   julia.c \
	   ship.c \
	   bird.c \
	   utl.c

OBJS = $(addprefix srcs/,$(SRCS:.c=.o))

NAME = fractol
CC = gcc
FLAGS = -Wall -Wextra -Ofast
INCS = includes -I libft/includes

GREEN = \x1b[32m
EOC = \x1b[0m

all: $(NAME)

$(NAME): $(OBJS)
	@echo "$(GREEN)[compiling libft]"
	@make -C libft
	@make -C minilibx
	@gcc $(FLAGS) -o $(NAME) libft/libft.a minilibx/libmlx.a $(OBJS) \
	-framework OpenGL -framework AppKit -Ofast

srcs/%.o: srcs/%.c
	@$(CC) $(FLAGS) -I $(INCS) -I minilibx -o $@ -c $<

clean:
	@make clean -C libft
	@rm -f $(OBJS)
	@echo "$(GREEN)[objs removed]$(EOC)"

fclean: clean
	@make fclean -C libft
	@rm -f $(NAME)
	@echo "$(GREEN)[workspace clean]$(EOC)"

re: fclean all
