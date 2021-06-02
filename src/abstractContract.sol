// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

abstract contract IOwner{
    address private owner;
    string public name;
     constructor(){
        owner = msg.sender;
        name='';
    }
    modifier isOwner()  {
        require(owner == msg.sender,'no permisson');
        _;
    }
    function modifyName(string memory _name) public virtual returns(bool);
}
contract Mint is IOwner{
    
    function modifyName(string memory _name) public isOwner override returns(bool){
        name=_name;
        return true;
    }
}
