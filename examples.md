# Example programs

Here are the example scripts included in the datapack.

For more info on MCASM, check out [scripting.md](scripting.md)

## Fibonacci

Computes and outputs the Fibonacci sequence (it will overflow at some point).

Command: `/function cb_computer:programs/fibonacci`

[MCASM](scripting.md):
```js
/* 0 */ LOAD R2 B
/* 1 */ LOAD R1 B
/* 2 */ ADD R1 A
/* 3 */ STORE R1 B
/* 4 */ STORE R2 A
/* 5 */ OUT R2
/* 6 */ JUMP 0
/* 7 */ #A# 0
/* 8 */ #B# 1
```

## Prime checker

Checks whether a number is a prime.

Command: `/function cb_computer:programs/is_prime`

Input: `/data modify storage cb_computer:storage Registers[0] set value <your_number>`

The algorithm tests each integer between your number and 1 by repeatedly subtracting it from the original value to see whether it is a divisor.

If your number is a prime number, the script outputs 1, otherwise, it results in 0.

[MCASM](scripting.md)
```js
BRANCH is-prime
OUT R1
STOP

//Find divisors
/*
    R1: number from which to find divisors
    R2: used as cache
*/

STORE R1 tmp-num  #is-prime#
STORE R1 tmp-step

LOAD  R2 tmp-step #start-div-loop#
SUB   R2 one
LOAD  R1 one
JEQ      prime //tmp-step = 1 -> no divisors -> prime

STORE R2 tmp-step
LOAD  R1 tmp-num 
DIV   R1 tmp-step
MUL   R1 tmp-step
LOAD  R2 tmp-num
JEQ      not-prime //Found divisor -> not prime
JUMP     start-div-loop

LOAD  R1 zero #not-prime#
RBR

LOAD  R1 one #prime#
RBR

#tmp-num# 0
#tmp-step# 0
#zero# 0
#one# 1
```

## Power

Raises a number to a particular power.

Command: `/function cb_computer:programs/pow`

Input:
- `/data modify storage cb_computer:storage Registers[0] set value <base>`
- `/data modify storage cb_computer:storage Registers[1] set value <exponent>`

If your number is a perfect number, the script outputs 1, otherwise, it results in 0.

[MCASM](scripting.md)
```js
//Pow
/* 0 */ STORE R1 10 //Store base
/* 1 */ ADD R2 9
/* 2 */ JUMP IF R2 8
/* 3 */ STORE R2 11 //Store exponent
/* 4 */ LOAD R2 10
/* 5 */ JUMP 12 //Multiply
/* 6 */ LOAD R2 11
/* 7 */ JUMP 1
/* 8 */ STOP
/* 9 */ -1 //const: -1
/* 10 */ 0 //Base
/* 11 */ 0 //Exponent

//Mult
/* 12 */ STORE R1 18
/* 13 */ ADD R2 19
/* 14 */ JUMP IF R2 17
/* 15 */ ADD R1 18
/* 16 */ JUMP 13
/* 17 */ JUMP 6 //Return to pow
/* 18 */ 0 //Count
/* 19 */ -1 //const: -1
```

## Perfect number checker

Checks whether a number is a perfect number, that is, a number which is equal to the sum of its divisors (excluding itself).

Command: `/function cb_computer:programs/is_perfect`

Input: `/data modify storage cb_computer:storage Registers[0] set value <your_number>`

[MCASM](scripting.md)
```js
BRANCH is-perfect
OUT R1
STOP

//Find divisors
/*
    R1: number from which to find divisors
    R2: used as cache
*/

STORE R1 tmp-num  #is-perfect#
STORE R1 tmp-step

LOAD  R2 tmp-step #start-div-loop#
SUB   R2 one
LOAD  R1 zero
JEQ      end //tmp-step = 0 -> go to end of script

STORE R2 tmp-step
LOAD  R1 tmp-num 
DIV   R1 tmp-step
MUL   R1 tmp-step
LOAD  R2 tmp-num
JEQ      add-div //Found divisor -> add
JUMP     start-div-loop

LOAD  R1 tmp-sum #add-div#
ADD   R1 tmp-step
STORE R1 tmp-sum

//Output divisor
LOAD  R1 tmp-step
OUT   R1

JUMP     start-div-loop

LOAD  R1 tmp-num #end#
LOAD  R2 tmp-sum
JEQ      perfect
LOAD  R1 zero
RBR

LOAD  R1 one #perfect#
RBR

#tmp-num# 0
#tmp-sum# 0
#tmp-step# 0
#zero# 0
#one# 1
```