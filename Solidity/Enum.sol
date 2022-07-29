//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract MyContract {
   //1. declare enum
   //2. use enum
   //3. Accept enum as argument
    enum STATE { INACTIVE, ACTIVE, PRO, CANCELLED}
    STATE state;

    struct User {
        STATE state;
    }
    function setToActive() external {
        state = STATE.ACTIVE;
    }

    function foo() external {
        if(state == STATE.ACTIVE) {
            //do something
        }
    }

    function bar(STATE _state) {

    }
}
