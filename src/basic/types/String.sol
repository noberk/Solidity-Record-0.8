// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;


contract Strings {
    uint256 public stringLength = bytes("\n\n1").length;
    string public len = "\n\n1";
    string public a = unicode"Hello 😃"; //Unicode Literals

    // Hexadecimal Literals
    string public hex1 = hex"0011223344556677";
    string public hex2 = hex"00112233" hex"44556677";
}
