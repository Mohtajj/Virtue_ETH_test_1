//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract MyContract {

    mapping(address => uint) balances;
    // send eth
    function invest() external payable {
        if(msg.value < 1 ether) {
            revert();
        }
    }

    // reached balance to smart contract
    function balanceof() external view returns(uint){
        return address(this).balance;
    }
}


// fuction can be non-view

//https://www.youtube.com/watch?v=4k_ak3SFczc&list=PLbbtODcOYIoE0D6fschNU4rqtGFRpk3ea&index=19
