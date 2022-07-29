 //SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract A {

    //2. Simple example: witha pure function
    //3. Advance example: with a struct
    //4. using...for
    //5. Deployed vs Embedded libraries

    library MyLibrary {

        function add10(uint a) pure public retuens(uint) {
            retuen a + 10;
        }
    }
    
    contract Mycontract {
        function foo() external {
            uint result = MyLibrary.add10(10);
        }
    }
} 

// //SPDX-License-Identifier: UNLICENSED

// pragma solidity 0.8.7;

// contract A {

//     //2. Simple example: witha pure function
//     //3. Advance example: with a struct
//     //4. using...for
//     //5. Deployed vs Embedded libraries

//     library MyLibrary {


//     struct Player {
//             uint score;
//            }

//         function incrementScore(Player _player, uint points) internal {
//             _player.struct += points
//         }
//     }
    
//     contract Mycontract {
//         uing MyLibrary for MyLibrary.Player;
//         mapping(uint => MyLibrary.Player) players;
//         function foo() external {
//             player[0].incrementScore(10); 
//         }
//     }
// } 
