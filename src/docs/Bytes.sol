// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.14 <0.9.0;


 contract Bytes{

     //Dynamic length bytes type
    bytes solt = new bytes(2);

    constructor(){
        solt[0] = 0xff;
        solt[1] = 0x86;
        // solt[2] = 0x11;
    }

    function getLengthOfBytes() external view returns (uint) {
        return solt.length;
    }
 }