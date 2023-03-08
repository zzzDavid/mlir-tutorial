# IR Traversal

## Run the experiments
```sh
./run.sh
```

## Operation, Region, and Block

- An operation is a single operation in the program, such as an addition or a function call. Operations can have inputs and outputs, which are represented as operands and results.
- A region is a sequence of operations that are executed in order. Regions can be used to represent loops, conditionals, and other control structures.
- A block is a sequence of operations within a region. Blocks are used to group related operations together, and they can have arguments that are used to pass values between operations.

The hierarchy works as follows:

- A program consists of one or more operations.
- Each operation can contain one or more regions.
- Each region can contain one or more blocks.
- Each block can contain one or more operations.

Regions and blocks allow for a nested structure of operations, which is useful for representing complex control flow structures. The hierarchy also provides a way to organize and group related operations together, which can make programs easier to read and understand.

The operations, regions, and blocks in an MLIR program can be manipulated programmatically using the MLIR API, or they can be generated from a higher-level language using a compiler front-end. Overall, the operation, region, and block hierarchy is a key feature of MLIR that enables it to represent a wide variety of programs in a flexible and extensible way.


## Explanation
The code is an implementation of an MLIR pass called `TestPrintNestingPass`. The pass is used to illustrate the structure of the intermediate representation (IR) of MLIR through printing.

- The `TestPrintNestingPass` pass is defined as a subclass of the `OperationPass` class in MLIR.
- The pass implements a method called `runOnOperation()`, which is the entry point for the pass. This method retrieves the root operation of the IR and calls a method called `printOperation()` to recursively print the structure of the IR.
- The `printOperation()` method is responsible for printing the properties of an operation, such as its name, number of operands, and number of results. It also recursively prints the regions attached to the operation by calling the `printRegion()` method for each region.
- The `printRegion()` method is responsible for printing the properties of a region, such as the number of blocks it contains. It recursively calls the `printBlock()` method for each block in the region.
- The `printBlock()` method is responsible for printing the properties of a block, such as the number of arguments and operations it contains. It recursively calls the `printOperation()` method for each operation in the block.
- The `printIndent()` method is a helper method used to manage the indentation of the printed output. It prints the appropriate number of spaces based on the current indentation level.
- The `pushIndent()` method is a helper method used to increment the indentation level.
- The `IdentRAII` struct is a helper struct used to automatically decrement the indentation level when a block of code is exited.
