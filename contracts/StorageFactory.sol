// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import { SimpleStorage } from "contracts/SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

}