//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

import 'Token.sol';

//1. import ERC20 token
//2. transfer()
//3. transferFrom() / approve()

//owner
//operator

contract TokenTransfer{
   function transfer() external {
       Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
       Token.transfer(msg.sender, 100);
   }  

   function transferFrom(address recipient, uint amount)) external {
       Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
       Token transferFrom(msg.sender, recipient, amount);
   }

contract Owner {
    function transfer(address recipient, uint amount) external {
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        token.approve(0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678, amount);

        TransferToken transferToken = TransferToken(0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678);
        transferToken.transferFrom(recipient, amount);
    }
}
} 

// Transfer = simple transfer
// TransferFrom = mostly used by thirdparty // opensea

// Token.sol :- https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
