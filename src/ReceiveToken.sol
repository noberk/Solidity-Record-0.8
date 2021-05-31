// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract FallbackExample{
   event LogBalance(uint balance);
   
   
   /**
   Fucntion receive is a keyword that combine with keywords external and payable that able to receive token from payer 
    */
   receive() external payable{  
    //  emit LogBalance(address(this).balance);
   }
   
   function eth() public view returns(uint){
      return address(this).balance;
   }
   

   
}