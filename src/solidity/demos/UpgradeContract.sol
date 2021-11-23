// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract EternalStorage {
    mapping(bytes32 => uint256) uintStorage;

    function getValue(bytes32 record) public view returns (uint256) {
        return uintStorage[record];
    }

    function setValue(bytes32 record, uint256 value) public {
        uintStorage[record] = value;
    }
}

library bollotLib {
    function getVotesNumber(address _es) public view returns (uint256) {
        return EternalStorage(_es).getValue(keccak256("votes"));
    }

    function setVotes(address _es, uint256 value) public {
        EternalStorage(_es).setValue(keccak256("votes"), value);
    }
}

contract Ballot {
    using bollotLib for address;
    address eternalStorage;

    constructor(address contractAddress) {
        eternalStorage = contractAddress;
    }

    function getVotes() public view returns (uint256) {
        return eternalStorage.getVotesNumber();
    }

    function setVotes() public {
        eternalStorage.setVotes(eternalStorage.getVotesNumber() + 1);
    }
}
