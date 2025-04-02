// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25; // solidity versions

contract SimpleStorage {
    //Favourite number gets initialized to 0 if no number is given
    uint256  myFavoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber =_favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPeople (string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}