//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.6;

contract SimpleStorage {
   uint256 favoriteNumber;
   event storedNumber(
      uint256 indexed oldnumber,
      uint256 indexed newnumber,
      uint256 addedNumber,
      address sender
   );

   function store(uint _favoriteNumber) public {
      emit storedNumber(
         favoriteNumber,
         _favoriteNumber,
         _favoriteNumber + favoriteNumber,
         msg.sender
      );
      favoriteNumber = _favoriteNumber;
   }
   function retrive() public view returns (uint256) {
      return favoriteNumber;
   }
}
