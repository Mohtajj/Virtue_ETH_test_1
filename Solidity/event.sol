//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract MyContract {
  
  event NewTrade (
      uint date,
      address indexed from,
      address indexed to,
      uint amount
  );

  function trade(address to, uint amount) external {
    emit NewTrade(now, msg.sender, to, amount);
  }
}

// you can maximum 3 event in one smart contract
// indexes are expencive
// event can not read by smart contract // one way communication
// gas cost lower from storage variable

//https://www.youtube.com/watch?v=jaMHPT-78HM&list=PLbbtODcOYIoE0D6fschNU4rqtGFRpk3ea&index=19
