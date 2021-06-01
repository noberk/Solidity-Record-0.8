// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract Donation{
    mapping (address =>uint) donationBalance;
    mapping (address=>bool) donationState;
    
    
    function currentAccountAddress() public view returns (address){
        return msg.sender;
    }
    function donate() public payable returns (uint){
        require(msg.value >= 1 ether, ' less than 1 ether');
        donationBalance[msg.sender] = msg.value;
        donationState[msg.sender] = true;
        return msg.value;
    }
    function isDonate(address donor) public view returns (bool){
        return donationState[donor] == true ? true : false;
    }
    function checkBalance(address donor) public view returns (uint){
        return donationBalance[donor];
    }
}