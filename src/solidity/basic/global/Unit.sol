// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;

contract Units {
    // currency unit
    uint256 denomination_wei = 1 wei;
    uint256 denomination_gwei = 1 gwei;
    uint256 denomination_ether = 1 ether;

    // time unit
    uint256 second = 1 seconds;
    uint256 minute = 1 minutes;
    uint256 day = 1 days;
    uint256 week = 1 weeks;
    // uint256 year = 1 years;    // The suffix years has been removed in version 0.5.0 due to the reasons above.
}
