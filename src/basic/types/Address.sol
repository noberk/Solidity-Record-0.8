// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;


/**

 */
contract Addresses{

  address public address1 = 0x2446EE32fc5BEbB80cd1Ace04f044A4a071E0b71;
  address public address2 = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

  /**
  * Two Addresses are able to compare with each such as type uint or bool.
  */
  function compareAddress() public view returns (bool) {
      return address1 > address2;   
  }
  
  
  // Address is able to convert to type uint160.
  function toUint160() public view returns (uint160) {
      return uint160(address1);
  }
  // Type uint is able to convert type Address.
  function toAddress(uint160 decimalAddress) public pure returns (address){
      return address(decimalAddress);
  }
  
  
  // To get balance of this constract.
  function balanceOfThisContract() public view returns (uint) {
      return (payable(address(this))).balance;
  }
  // To get Contract address.
  function getContractAddress() public view returns (address){
      return address(this);
  }
  
    // To get balance of specific address.
  function balanceOf(address userAddress) public view returns (uint) {
      return userAddress.balance;
  }
  
  
  
  // transfer token to that address which throught parameter `to`.
  function transfer(address payable to) public payable returns (bool){
      to.transfer(msg.value);
      return true;
  }
  // transfer token to that address which throught parameter `to`. 
  function transferHalf(address payable to) public payable returns (bool){
      to.transfer(msg.value/2);  // pay 1/2 tokens to the Contract address as transaction fee.
      return true;
  }
  
  
 
}