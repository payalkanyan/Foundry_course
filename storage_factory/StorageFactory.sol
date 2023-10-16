// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


import {SimpleStorage} from "./SimpleStorage.sol";
// import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";


contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(
        uint256 _Index, uint256 _Number) public {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _Index) public view returns (uint256) {
        return listOfSimpleStorageContracts[_Index].retrieve();
    }
}
