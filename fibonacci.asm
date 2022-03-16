STRING_VARS
greeting "Привет, эта программа вычисляет n-тое число Фибоначчи!"
request "Пожалуйста, введите n:"
result "Вот ваше число:"
START
PRINT_STR greeting
PRINT_STR request
READ reg1
MOVE reg2 1
MOVE reg3 0
MOVE reg4 1
loop
COPY reg2 reg5
ADD reg2 reg3 reg2
COPY reg5 reg3
SUB reg1 reg4 reg1
JMP_ZERO reg1 end_loop
JMP loop
end_loop
PRINT_STR result
PRINT_INT reg2
STOP