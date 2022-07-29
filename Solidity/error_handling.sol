//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract MyContract{
     //1. what happen when there is an error?
     //2. throw
     //3. revert()
     //4. require()
     //5. assert()
     //6. error in other contract

     uint a;

     function foo() external {
         if(a == 10) {
             revert('this is why it reverts');
         }
         require(a !=10, 'this is why it reverts');
         assert(a != 10);
     }

     function willThrow() external {
         assert(true == false);
     }

     function willThrowInOtherContract() external {
         B b = new B();
        //b.bar();

         address(b).call(abi.encodePacked("bar()"));
     }
} 

contract B {
    function bar () external {
        revert('because other reasons');
    }
}
