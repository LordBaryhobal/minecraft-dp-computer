#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os, re, sys

opcode_len = 6
instruction_len = 16

nonopcode_len = instruction_len-opcode_len

opcodes = {
    "LOAD R1": 0,
    "STORE R1": 1,
    "JUMP IF R1": 2,
    "ADD R1": 3,
    "<< R1": 4,
    "NOT R1": 5,
    "JUMP": 6,
    "STOP": 7,
    
    "LOAD R2": 8,
    "STORE R2": 9,
    "JUMP IF R2": 10,
    "ADD R2": 11,
    "<< R2": 12,
    "NOT R2": 13,
    "OUT R1": 14,
    "OUT R2": 15,
    
    "LOAD R1 ADDR R2": 16,
    "STORE R1 ADDR R2": 17,
    "BEQ": 18,
    "SUB R1": 19,
    ">> R1": 20,
    "BGT": 21,
    "BLT": 22,
    "BRANCH": 23,

    "LOAD R2 ADDR R1": 24,
    "STORE R2 ADDR R1": 25,
    "JEQ": 26,
    "SUB R2": 27,
    ">> R2": 28,
    "JGT": 29,
    "JLT": 30,
    "RBR": 31,
    
    "MUL R1": 32,
    "DIV R1": 33,
    
    "MUL R2": 40,
    "DIV R2": 41
}

def convert(program):
    print(f"opcode_len = {opcode_len}")
    print(f"instruction_len = {instruction_len}")
    
    #Remove comments
    program = re.sub(r"(\/\/.*$|\/\*[\s\S]*?\*\/)", "", program, 0, re.MULTILINE)
    
    lines = program.split("\n")
    instructions = []
    
    named_lines = {}
    
    l_index = 0
    
    for l in range(len(lines)):
        line = lines[l]
        
        if len(line.strip()) > 0:
            match = re.search(r"#(.*?)#", line)
        
            if match:
                named_lines[match.group(1)] = l_index
            
                lines[l] = re.sub(r"#(.*?)#", "", line)
            
            l_index += 1
    
    print("References:",named_lines)
    
    for line in lines:
        line = line.strip()
        
        #Replace repeated spaces with 1 space
        line = re.sub(r" +"," ",line)
        
        if len(line) > 0:
            args = line.split(" ")
            opcode, arg = " ".join(args[:-1]), args[-1]
            opcode = opcode.upper()
            
            if opcode in opcodes.keys():
                opcode = opcodes[opcode] << nonopcode_len
                
                try:
                    arg = int(arg)
                except:
                    if arg in named_lines.keys():
                        arg = named_lines[arg]
                    else:
                        arg = 0
                
                instructions.append(opcode + arg)
            
            else:
                if line.upper() in opcodes.keys():
                    instructions.append(opcodes[line] << nonopcode_len)
                
                else:
                    instructions.append(int(line))
    
    print(f"Converted {len(instructions)} instructions")
    
    return f"data merge storage cb_computer:storage {{Memory:[{', '.join(list(map(str, instructions)))}]}}"


if __name__ == "__main__":
    path = sys.argv[1]
    
    if os.path.exists(path):
        with open(path, "r") as f:
            content = f.read()
        
        
        with open(os.path.splitext(path)[0]+".mcfunction", "w") as f:
            f.write(convert(content))