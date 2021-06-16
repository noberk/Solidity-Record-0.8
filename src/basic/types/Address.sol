// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.14 <0.9.0;


/**

 */
contract Addresses{

  address public add1 = 0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
  address public add2 = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

  function compareAddress() public view returns (bool) {
      return add1 > add2;   
  }
  
  function toUint160() public view returns (uint160) {
      return uint160(add1);
  }

  function toAddress(uint160 decimalAddress) public pure returns (address){
      return address(decimalAddress);
  }

  function donate() public payable {

  }

  function balanceOf() public view returns (uint) {
      return address(this).balance;
  }
}