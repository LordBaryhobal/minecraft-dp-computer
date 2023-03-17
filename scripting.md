# Scripting

To program the computer, I created a basic language named MCASM (Minecraft Assembly).

If you wish to script, you can find [the Sublime Text package](mcasm) enabling syntax highlighting and compiling.

The syntax is pretty straightforward. Each line contains a opcode (see the [list](#instructions) below) followed by the necessary arguments.

Arguments may be integers or references to other lines (see [named-lines](#named-lines)).

There can be any number of blank lines and [comments](#comments)

For example:
```js
LOAD R2 11  // Loads address 11 into register 2
```

## Comments

You can write one-line or multi-line comments using the standard `//` and `/* */` syntax.

For example:
```js
OUT R1  // This is a comment
/*
    This is also a comment
*/
```

## Named lines

To simplify and avoid managing addresses, you can optionally named certain lines and reference them in other instructions.

To name a line, write `#the-name#` anywhere on the line (preferably at the beginning or end).
Referencing it in an instruction is then as simple as writing the name for the argument.

For example:
```js
#my-value# 42
LOAD R1 my-value  // Loads the value 42 into register 1
```

## Instructions

Here is the complete list of available instructions with their arguments and what they do.

| Opcode | Argument | Result |
| :--- | :--- | :--- |
| `LOAD R1` | Source address | Loads the value at the source address into register 1 |
| `STORE R1` | Destination address | Stores the value of register 1 in the destination address |
| `JUMP IF R1` | Jump address | Jumps to the given address if register 1 equals 0 |
| `ADD R1` | Value address | Adds the value at the given address to register 1 |
| `<< R1` | - | Bitshifts register 1 once to the left (= multiplies by 2) |
| `NOT R1` | - | Inverts register 1 (= performs the bitwise NOT operation) |
| `JUMP` | Jump address | Jumps to the given address |
| `STOP` | - | Stops the execution of the script |
| `LOAD R2` | Source address | Loads the value at the source address into register 2 |
| `STORE R2` | Destination address | Stores the value of register 2 in the destination address |
| `JUMP IF R2` | Jump address | Jumps to the given address if register 2 equals 0 |
| `ADD R2` | Value address | Adds the value at the given address to register 2 |
| `<< R2` | - | Bitshifts register 2 once to the left (= multiplies by 2) |
| `NOT R2` | - | Inverts register 2 (= performs the bitwise NOT operation) |
| `OUT R1` | - | Outputs the value of register 1 |
| `OUT R2` | - | Outputs the value of register 2 |
| `LOAD R1 ADDR R2` | - | Loads the value at the address stored in register 2 into register 1 |
| `STORE R1 ADDR R2` | - | Stores the value of register 1 into the address stored in register 2 |
| `BEQ` | Branch address | Branches to the given address if register 1 and 2 are equal |
| `SUB R1` | Value address | Subtracts the value at the given address from register 1 |
| `>> R1` | - | Bitshifts register 1 once to the right (= divides by 2) |
| `BGT` | Branch address | Branches to the given address if register 1 is greater than register 2 |
| `BLT` | Branch address | Branches to the given address if register 1 is less than register 2 |
| `BRANCH` | Branch address | Branches to the given address |
| `LOAD R2 ADDR R1` | - | Loads the value at the address stored in register 1 into register 2 |
| `STORE R2 ADDR R1` | - | Stores the value of register 2 into the address stored in register 1 |
| `JEQ` | Jump address | Jumps to the given address if register 1 and 2 are equal |
| `SUB R2` | Value address | Subtracts the value at the given address from register 2 |
| `>> R2` | - | Bitshifts register 2 once to the right (= divides by 2) |
| `JGT` | Jump address | Jumps to the given address if register 1 is greater than register 2 |
| `JLT` | Jump address | Jumps to the given address if register 1 is less than register 2 |
| `RBR` | - | Returns to the branch address (only the last branch address is stored, meaning only chained branches are not reversible) |
| `MUL R1` | Value address | Multiplies register 1 by the value at the given address |
| `DIV R1` | Value address | Divides register 1 by the value at the given address |
| `MUL R2` | Value address | Multiplies register 2 by the value at the given address |
| `DIV R2` | Value address | Divides register 2 by the value at the given address |