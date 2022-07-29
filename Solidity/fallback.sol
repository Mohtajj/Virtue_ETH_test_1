//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

// // Usecase 1: recive Ether
//     // Usecase 2: "fallback"
//     // Declare fallback function
//     // Differnce with regular function
//     // Send some data
//     // Send some Ether
//     // Gas stipends
//     // Reject incoming calls
//     // Example 1: Call function that does not exists
//     // Example 2: Send Ether from regular address
//     // Example 3: Send Ether from smart contract
    

// contract A {

//     // Send some data
//     function() external {
//          bytes msg.data;
//          uint
//          bool
//          assembly
//     }

//     // Send some Ether
//     function() payable external {
         
//     }

//     // Reject incoming calls
//     function() payable external {
//          revert('');  // nobody can call your function
//     }

//     function() external {
//          revert('');  // nobody can call your function
//     }

//     function() payable external {
//         if(msg.data.length > 0){
//             revert(''); 
//         }
         
//     }
// }


 
// Example 1: Call function that does not exists
contract A {
     function() external {

     }
}

contract B {
    function foo() external {
        A a = new A();
        InterfaceA(address(a)).doesNotExist();
    }
}

contract InterfaceA {
    function doesNotExist() external;
}

// Example 2: Send Ether from regular addresss
contract A {
     function() external {

     }
}

contract B {
    function foo() external {
        A a = new A();
        InterfaceA(address(a)).doesNotExist();

        address payable a_payable = address(uint160(address(a)));
        a_payable.transfer(100);
    }
}

contract InterfaceA {
    function doesNotExist() external;
}

// // fallback function does not have any name
// // Only External Visibility
// // one smart contract constrain 1 fallback Function
