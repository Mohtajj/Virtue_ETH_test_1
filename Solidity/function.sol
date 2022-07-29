//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.6;

contract MyContract {
   uint value;

   function getValue() external view returns(uint) {
      return value;
   }

   function setValue(uint _value) external {
      value = _value;
   }
}

//Function Visiblity
// private >> internal >> ecternal >> public
