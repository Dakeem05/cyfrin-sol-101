// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import { SimpleStorage } from "contracts/SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI (technically a lie, you just need the function selector) - Application Binary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
       return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}