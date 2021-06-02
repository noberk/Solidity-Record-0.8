// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract School{
    uint id;
    struct Student{
        string name;
        bool active;
        uint16 score;
    }
    mapping (uint=>Student) Students;
     constructor(){
         id=0;
     }
    modifier isExist(uint _id){
        require(Students[_id].active== true,'The id does not exist.');
        _;
    }
    function register(string memory name) public returns (bool){
        bool isRegister = false;
        Students[id] = Student({score:0, name:name,active:true});
        id++;
        isRegister =true;
        return isRegister; 
    }
    function modifyScore(uint _id, uint16 score) public isExist(_id) {
        Students[_id].score = score;
    }
    
    function getStudentInfo(uint _id) public  isExist(_id) view returns(string memory name,  uint16 score) {
        return (Students[_id].name, Students[_id].score);
    }
}