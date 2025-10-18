// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FavoriteNumberBook {
    struct User {
        string name;
        uint256 favoriteNumber;
    }

    mapping(string => uint256) private nameToFavoriteNumber;

    function setFavoriteNumber(string memory name, uint256 number) public {
        nameToFavoriteNumber[name] = number;
    }

    function getFavoriteNumber(string memory name) public view returns (uint256) {
        return nameToFavoriteNumber[name];
    }
}
