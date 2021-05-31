// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract BlockChainOfAndrew {
    address myAddress;
    string name;
    constructor(){
        myAddress= msg.sender;
    }
    
    function setName(string memory _name) public isAdmin returns (string memory) {
        name = _name;
        return name;
    }
    
    function getName() public view returns (string memory){
        return name;
    }
    
    modifier isAdmin() {
        require(myAddress == msg.sender,'you have no permission to modify.');
        _;
    }
}