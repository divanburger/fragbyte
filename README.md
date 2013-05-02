# GLSL to Bytecode compiler and vm

## Bytecode converter
The bytecode converter uses Antlr4 and is written in Java. It converts
a WebGL GLSL fragment program to bytecode. Writes out the bytecode in
a text format.

## Bytecode
The bytecode is a custom stack-based bytecode 
with instructions specially suited for GPUs such as native vector 
instructions, normalization and smoothstep.

## Bytecode VM
The VM is written in C++ and runs the bytecode. The bytecoded is
interpreted once and executed on all pixels to reduce interpretation
overhead.

## TODO

 * If-statements
 * float * vecT parsing
 * Matrices
 * Possibly missing intrinsics
 * Better for-loop support

If statement support requires masking operations from some pixels
