//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract MyContract {
    //1.modifier syntax
    //2. passing arguments
    //3. chasing modifiers
    //4. example for access control

    function foo(uint a) external myModifier1(a) myModifier2(a){
        // do some stuff
    }

    modifier myModifier1(uint a) {   // bydefault it is internal
        require(a == 10, 'my error message');
            //
        _;
    }

    modifier myModifier2(uint a) {   // bydefault it is internal
        require(a == 10, 'my error message');
            //
        _;
    }
}

// function modifier helps you to run some code before you execute some function

// ================

// ACCESS CONTROL MODIFIER
// only admin can call 


// pragma solidity 0.8.7;

// contract MyContract {
//     //1.modifier syntax
//     //2. passing arguments
//     //3. chasing modifiers
//     //4. example for access control

//     address admin;
//     function foo(uint a) external onlyAdmin() {
//         // do some stuff
//     }

//     modifier onlyAdmin() {   // bydefault it is internal
//         require(msg.sender == admin, 'only admin');
//             //
//         _;
//     }
// }
