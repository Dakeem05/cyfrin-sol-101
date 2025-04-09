// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // + 5
    // procedure: overrides
    // keywords: virtual and override

    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}