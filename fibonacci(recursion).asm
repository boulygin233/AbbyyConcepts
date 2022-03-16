STRING_VARS
greeting "Привет, эта программа рекурсивно вычисляет n-тое число Фибоначчи!"
request "Пожалуйста, введите n:"
result "Вот ваше число:"
MEMORY
256
FUNCTIONS
DEF fib
JMP_ZERO reg2 out
SUB reg2 reg10 reg2
JMP_ZERO reg2 out
PUSH reg2
PUSH reg4
PUSH reg5
CALL fib
POP reg5
POP reg4
POP reg2
COPY reg1 reg4
SUB reg2 reg10 reg2
PUSH reg2
PUSH reg4
PUSH reg5
CALL fib
POP reg5
POP reg4
POP reg2
COPY reg1 reg5
ADD reg4 reg5 reg1
JMP end
out
MOVE reg1 1
JMP end
end
RET
START
PRINT_STR greeting
PRINT_STR request
READ reg2
PUSH reg2
MOVE reg10 1
CALL fib
POP reg2
PRINT_STR result
PRINT_INT reg1
STOP