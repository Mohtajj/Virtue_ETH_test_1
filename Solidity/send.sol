//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract MyContract {
    //1. transfer
    //2. address vs address payable
    //3. address payable casting (address and uint160)
    //4. msg.sender
    //5. send vs transfer

    address payable[] recipient;
    function sendEther(address payable recipient) external {
        recipient.transfer(1 ether);
        //transfer 1 ether from this smart contract to recipient

        address a;
        a = recipient;

        a.transfer(100);

        msg.sender.transfer(100);

        recipient.send(1 ether);
    }
}

//types casting = changing the variable

// send retuen false boolean value if trancation fail
// transfer propagate error // whole trancation cancelled
