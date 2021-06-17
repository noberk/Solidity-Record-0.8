// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;


/**

 */
contract Addresses{

  address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // hex address with 40 lengths
  address public address2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
  address payable public contractOwner;
  address payable public owner;
  
   constructor(){
       contractOwner = payable(address(this));  //❗❗ To get Contract address.
       owner = payable(msg.sender);  // ❗❗ acount address
   }
  
  
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
      return address(this).balance;
  }
 
  
    // To get balance of specific address.
  function balanceOf(address userAddress) public view returns (uint) {
      return userAddress.balance;
  }
  
  //transfer token to this contract address and must with function `receive` 
  function donate() external payable {}
  receive() external payable {}
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