# State Variables

State variables are variables whose values are permanently stored in contract storage.

# Functions

Functions are the executable units of code. Functions are usually defined inside a contract, but they can also be defined outside of contracts.

# Events

Events are convenience interfaces with the EVM logging facilities.

# Errors

Errors allow you to define descriptive names and data for failure situations. Errors can be used in revert statements. In comparison to string descriptions, errors are much cheaper and allow you to encode additional data. You can use NatSpec to describe the error to the user.

# Struct

Structs are custom defined types that can group several variables.

# Enum

Enums can be used to create custom types with a finite set of ‘constant values’

# Value Type

## bool

!
&&
||
==
!=

## Integers

uint8 to uint256 (in steps of 8)
int8 to int256 (in steps of 8)

### Comparisons

<=
<
==
!=

> =

### Bit operators

&
|
^
~

### Shift operators

<<

> >

### Arithmetic operators

-

* (only for signed integers)

- /
  %
  \*\*

# Address

address: Holds a 20 byte value (size of an Ethereum address).
address payable: Same as address, but with the additional members transfer and send.

If you convert a type that uses a larger byte size to an address, for example bytes32, then the address is truncated. To reduce conversion ambiguity version 0.4.24 and higher of the compiler force you make the truncation explicit in the conversion. Take for example the 32-byte value 0x111122223333444455556666777788889999AAAABBBBCCCCDDDDEEEEFFFFCCCC.

You can use address(uint160(bytes20(b))), which results in 0x111122223333444455556666777788889999aAaa, or you can use address(uint160(uint256(b))), which results in 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc.

# Fixed-size byte arrays

bytes1 bytes2 bytes3 ... bytes32

byte[]
The type byte[] is an array of bytes, but due to padding rules, it wastes 31 bytes of space for each element (except in storage). It is better to use the bytes type instead.

Prior to version 0.8.0, byte used to be an alias for bytes1.
