//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.6;

contract MyContract {

   //tx
   tx.origin

   //msg
   msg.value
   msg.sender

   Alice => Smart contract A   => Smart Contract B  => Smart Contract C
            tx.origin = Alice      tx.origin = Alice
            msg.sender = Alice      msg.sender = smart Contract A
  
   //block
   block.timestamp / now => 1970 (s)
}

