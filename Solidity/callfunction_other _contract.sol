//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract A{
    //1. call function of other contract
    //2. import keyword
    //3. contract interface
    //4. error propagation

    //1. interface of B => B
    //2. address of B

    address addressB;

    function setaddressB(address _addressB) external  {
        addressB = _addressB;
    }

    function callHelloWoeld() external view returns(string memory) {
        B b = B(addressB);
        return b.helloWorld();
    }
}

contract B {
    function hellWorld() external pure returns(string memory) {
        return 'hellWorld';
    }
}  
