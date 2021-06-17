// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract FallbackExample{
   event LogFallback(string message);
   event LogBalance(uint balance);

   function callback() public{
     emit LogFallback('fallback');
     emit LogBalance(address(this).balance);
   }
}