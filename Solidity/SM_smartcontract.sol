//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

//1. create child contracts
//2. Store child contract address
//3. Cast contract pointer to address
//4. Call function of Child contract
//5. Caveat then admin is contract

contract LoanFactory {
    Loan[] loans;
    function createLoan() external { //  if we want return thren we need to add view keyword.
        Loan loan = new Loan(100);
        loan.push(loan);
        address(loan);

        loan.reimburse();
    }

    function withdraw() {
        loan.withdraw();
    }
}

contract Loan {
    uint public amount;
    constructor(uint _amount) public {
        amount = _amount;
        admin = msg.sender;
    }

    function withdraw() external {
        //withdraw the ether
    }

    function reimburse() external {

    }
}
