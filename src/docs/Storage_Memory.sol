 contract FirstSurprise {
 
 struct Camper {
   bool isHappy;
 }
 
 mapping(uint => Camper) public campers;
 
 function setHappy(uint index) public {
   campers[index].isHappy = true;
 }
 function surpriseOne(uint index) public {
   Camper storage c = campers[index];
   c.isHappy = false;
 }
}