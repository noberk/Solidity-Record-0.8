// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;

/**
 * You should use bytes over byte[] because it is cheaper, since byte[] adds 31 padding bytes between the elements. 
 * As a general rule, use bytes for arbitrary-length raw byte data and string for arbitrary-length string (UTF-8) data. 
 * If you can limit the length to a certain number of bytes, always use one of the value types bytes1 to bytes32 because they are much cheaper.
 */

 contract Bytes{

     //Dynamic length bytes type
    bytes public solt = new bytes(3);
    bytes[] public soltArrray;
    uint[] public uintArray;
    bytes solt2= new bytes(100);
    constructor(){
        solt[0] = 0xff;
        solt[1] = 0x86;
        solt[2] = 0x11;
        
        solt.push(0x99);
    }

    function getLengthOfBytes() external view returns (uint) {
        return solt.length;
    }

    function getLengthOfBytes100() external view returns (uint) {
        return solt2.length;
    }
    function addByte(bytes memory _data) external returns (bytes[] memory) {
        soltArrray.push(_data);
        return soltArrray;
    }
    function addUint(uint _data) external  returns (uint[] memory) {
        uintArray.push(_data);
        return uintArray;
    }
    
    function pushInSolt(bytes1 _data) public  returns (bytes memory) {
         solt.push() = _data;
         return solt;

      
    }
 } 
    
 
 
 