// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;


/**Enums are one way to create a user-defined type in Solidity. 
They are explicitly convertible to and from all integer types but implicit conversion is not allowed. 
The explicit conversion from integer checks at runtime that the value lies inside the range of the enum and causes a Panic error otherwise. 
Enums require at least one member, and its default value when declared is the first member. Enums cannot have more than 256 members. */
contract Enums{
   enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() public {
        choice = ActionChoices.GoStraight;
    }

    // Since enum types are not part of the ABI, the signature of "getChoice"
    // will automatically be changed to "getChoice() returns (uint8)"
    // for all matters external to Solidity.
    function getChoice() public view returns (ActionChoices) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice);
    }
}