// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract Numbers {
    uint256 b = 122_11;
}

contract Strings {
    uint256 public stringLength = bytes("\n\n1").length;
    string public len = "\n\n1";
    string public a = unicode"Hello 😃"; //Unicode Literals

    // Hexadecimal Literals
    string public hex1 = hex"0011223344556677";
    string public hex2 = hex"00112233" hex"44556677";
}

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

/**
function (<parameter types>) {internal|external} [pure|view|payable] [returns (<return types>)]

 */
contract Functions{

}


