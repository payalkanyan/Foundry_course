// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
// pragma solidity ^0.8.18;
// pragma solidity >=0.6.0 <0.9.0;


contract SimpleStorage {
    uint256 FavNumber;

    struct Person {
        uint256 favNumber;
        string name;
    }
    
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavNumber;

    function store(uint256 _favNumber) public virtual {
        FavNumber = _favNumber;
    }

    function retrieve() public view returns (uint256) {
        return FavNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        listOfPeople.push(Person(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}