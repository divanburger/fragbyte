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

## Optimization
Some bytecode optimization is done to reduce instructions by combining
instructions or removing redudant instructions. Some constant folding
is also done as well as removing redudant loads, saves and unused slots.

## Benchmarks
On a Intel Core-i5 3570K the following frametimes were achieved with
slightly modified versions (to work around TODOs) of the following shaders:

https://www.shadertoy.com/view/XsfGRn
https://www.shadertoy.com/view/4dX3Rn
https://www.shadertoy.com/view/XsXGzn
https://www.shadertoy.com/view/4dsGzH

They achieved 68ms (15fps), 79ms (13fps), 40ms (25fps), 88ms (11fps) per frame respectively.
