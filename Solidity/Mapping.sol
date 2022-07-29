/SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract MyContract {
   //1. declare mapping
   //2. C.R.U.D
   //3. Default values
   //4. Exotic mapping 1: nested mappings
   //5. Exotic mapping 2: array inside mapping

   //1. declare mapping

   mapping(address => uint) balances; //default value uint=0; bool=false;

   function foo() external {
       //2 - Add
       balances[msg.sender] = 100;
       //2 - Read
       balances[msg.sender];
       //2 - update
       balances[msg.sender] = 200;
       //2 - delete
       delete balances[msg.sender];

       //3 - Default values
       balances[someAddressThatDoNotExists] => 0
   }
}

// =============================================================

//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.6;

contract MyContract {
   //1. declare mapping
   //2. C.R.U.D
   //3. Default values
   //4. Exotic mapping 1: nested mappings
   //5. Exotic mapping 2: array inside mapping

   //1. declare mapping

   mapping(address => uint) balances; //default value uint=0; bool=false;
    mapping(address => mapping(address => bool)) approved;

   function foo() external {
       //2 - Add
       balances[msg.sender] = 100;
       //2 - Read
       balances[msg.sender];
       //2 - update
       balances[msg.sender] = 200;
       //2 - delete
       delete balances[msg.sender];

       //3 - Default values
       balances[someAddressThatDoNotExists] => 0

       //4 exotic mapping 1
       approved[msg.sender][spender] = true;
       approved[msg.sender][spender]; 
       approved[msg.sender][spender] = false;
       delete approved[msg.sender][spender];
   }
}

// ======================================================

//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.6;

contract MyContract {
   //1. declare mapping
   //2. C.R.U.D
   //3. Default values
   //4. Exotic mapping 1: nested mappings
   //5. Exotic mapping 2: array inside mapping

   //1. declare mapping

   mapping(address => uint) balances; //default value uint=0; bool=false;
    mapping(address => mapping(address => bool)) approved;
    mapping(address => uint[]) scores;

   function foo() external {
       //2 - Add
       balances[msg.sender] = 100;
       //2 - Read
       balances[msg.sender];
       //2 - update
       balances[msg.sender] = 200;
       //2 - delete
       delete balances[msg.sender];

       //3 - Default values
       balances[someAddressThatDoNotExists] => 0

       ///4 exotic mapping 1
       approved[msg.sender][spender] = true;
       approved[msg.sender][spender]; 
       approved[msg.sender][spender] = false;
       delete approved[msg.sender][spender];

       //5. exotic mapping 2 

      // scores[msg.sender] = new uint[](2); // array declarion if nor created
       scores[msg.sender].push(1);
       scores[msg.sender].push(2);
       scores[msg.sender][0];
       scores[msg.sender][0] = 10;
       delete scores[msg.sender][0];
   }
}
