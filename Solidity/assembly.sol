//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract A {
    // What can you dop with assembly
    // Ethereum Virtual Machine (EVM)
    // Assembly syntax
    // read and store data
    // Assembly example 1: detect if address is a smart contract
    // Assembly example 2: cast bytes to bytes32

    function foo() external{
        uint a;
        uint b;
        uint c;
        c = a + b;

        assembly {
            c := add(1,2) // no semicollan in assembly
            function
        }

        //read and install data in solidity
        assembly {
            let a := mload(0x40)
            mstore(a, 1) // store in memory
            sstore(a, 10) // store in storage
        }

    }
}

// Assembly example 1: detect if address is a smart contract
function foo() external{
        uint a;
        uint b;
        uint c;
        
        uint size;
        address addr = msg.sender;
        
        assembly {
            size := extcodesize(addr)
        }

        if(size > 0) {
            return true;
        } else {
            return false;
        }
    }
}

// Assembly example 2: cast bytes to bytes32
function foo() external{
        uint a;
        uint b;
        uint c;
        
        bytes memory data = new bytes(10);

        //bytes32 dataB32 = bytes32(data);

        bytes32 dataB32;

        assembly {
            dataB32 : == mload(add(data, 32))
        }
}
