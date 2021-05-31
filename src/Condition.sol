// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract TestingRevert{
    bool state = false;
    
    constructor(){
        state = true;
    }
    
    function asserts() public returns (uint8){
        state= false;
        assert(state);
        return 1;
    }
     function requires() public returns (uint8){
        state= false;
        require(state,'error');
        return 1;
    }
     function reverts() public returns (uint8){
        state= false;
        revert('error');
        // return 1;
    }
}