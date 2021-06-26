// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.6;
pragma experimental ABIEncoderV2;

contract Ledger {
    struct Record {
        uint256 amount;
        uint24 date;
        uint8 types;
    }
    
    mapping(address => Record[]) personRecords;

    function addToBook(address yourBook, Record memory record)
        external
        returns (bool)
    {
        Record memory localRecord;
        localRecord.amount = record.amount;
        localRecord.date = record.date;
        localRecord.types = record.types;
        personRecords[yourBook].push(record);
        return true;
    }
    function checkBook(address yourBook) external view returns(Record[] memory){
        return personRecords[yourBook];
    }
    
    // function deleteBook(uint24 id) external returns (bool) {
    //     delete personRecords[msg.sender];
    //     return true;
    // }
    receive() external payable {}
}
