//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

//1. declaring constructor
//2. difference with regular function
//3. admin pattern
//4. calling other function
//5. calling parent constructors

contract MyContract{
    uint a;
    constructor(uint _a) public {
        a = _a;
        //other initialization logic
    }
}

// ==============================================

//3. admin pattern
contract MyContract{
    uint a;
    address admin;
    constructor(uint _a) public {
        admin = msg.sender;
        //other initialization logic
    }
}

// ============================
//5. calling parent Function
contract MyParentContract{
    uint a;
    address admin;
    constructor(uint _a) public {
        //do some stuff
    }
}

contract MyContract is MyParentContract {
    uint a;
    address admin;
    constructor(uint _a) MyParentContract public {
       // it can be empty
    }
}
