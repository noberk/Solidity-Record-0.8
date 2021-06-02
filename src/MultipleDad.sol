// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract MultipleDad{
    
    struct DonorInfo{
        address[] record;
    }
    struct Transcation{
       uint[] amount;
    }
    mapping (address=>DonorInfo) donors;
    mapping (address=> Transcation) trans;
    
    function donate(address payable receiver)public payable {
        require(msg.value > 0,'nonatation token must grate than 0');
        receiver.transfer(msg.value);
        donors[receiver].record.push(msg.sender);
        trans[msg.sender].amount.push(msg.value);
    }
    function displayDonor() public view returns (address[] memory ) {
        return donors[msg.sender].record;
    }
    function displayTransactionOfDonor(address donor) public view returns(uint[] memory){
        return trans[donor].amount;
    }
}