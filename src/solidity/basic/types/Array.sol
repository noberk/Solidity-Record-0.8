// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;

/**
Property:
   length
function:
   push()
   push(x)
   pop()
 */
contract Array{

    /**
    Accept a dynamic bytes as parameter after that using `Array slices syntax  [1:2]` to cut specific length of Array
    x[start:end]
    x[:end] 
    x[start:]
    
     */
    function arraySlice(bytes calldata _data) external pure returns (bytes4){
        bytes4 sig = bytes4(_data[1:4]);
        return sig;
    }
}


