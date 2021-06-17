// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SendToken{
  
    receive() external payable{}
    // fallback() external payable{}
    function Balance() public view returns (uint) {
        return address(this).balance;
    }
    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
    
}

// https://solidity-by-example.org/sending-ether/