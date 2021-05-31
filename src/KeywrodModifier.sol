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
    
    /** Using keyword modifier to define a reusable function. */
    modifier isAdmin() {
        // Reuqire function is a determination whether first parameter is true or false.
        // if true, continue to go futher.
        // if false, halting the current transaction
        require(myAddress == msg.sender,'you have no permission to modify.');   

        // go into the function which is called.
        _; 
    }
}