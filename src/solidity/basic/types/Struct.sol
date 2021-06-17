// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;

contract Area {
    struct Point {
        uint256 x;
        uint256 y;
    }
    Point public point = Point({x: 1, y: 2});

    Point[] public pointArray;

    function fillPoints(uint256 count) external {
        for (uint256 index = 0; index < count; index++) {
            pointArray.push(Point(index, ++index));
        }
    }

    function getCount() external view returns (uint256) {
        return pointArray.length;
    }

    function getArray() external view returns (Point[] memory) {
        return pointArray;
    }
}
