//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.6;

contract MyContract {
    //1. storage arrays
    //2. memory arrays
    //3. array arguments and return arrays from function

    //1. storage arrays   -- Stored in Blockchian
    uint[] myArray; //crud, create, read, update, delete

    function foo() external {
        myArray.push(2);
        myArray.push(3);

        myArray[0]; //read array

        myArray[0] = 20; // update array

        delete myArray[1]; => myArray[1] = false;

        for(uint i = 0; i < myArray.length; i++) {
            myArray[i];
        }
    }

    //2. memory arrays  -- does not stored in blockchain so that memory create in Function
    function bar() external {
        uint[] memory newArray = new uint[](10);
        newArray[0] = 10; 
        newArray[1] = 20; 
        
        newArray[0];

        newArray[0] = 200;

        delete newArray[5];
    }

    //3. arrays in function
    function fooBar(uint[] calldata myArg) internal returns (uint[] memory) {
        
    }
}
