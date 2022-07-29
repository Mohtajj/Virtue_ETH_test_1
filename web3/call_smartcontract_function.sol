// 1. contract Address
// 2. contract ABI

const { result } = require('lodash');

const init = async () => {


    const { async } = require('regenerator-runtime');
    const Web3 = require('web3');
    const MyContract = require ('./build/contracts/Migrations.json');
    const web3 = new Web3('http://localhost:9545');

    const id = await web3.eth.net.getId();
    const deployedNetwork = MyContract.networks[id];
    const contract = new web3.eth.contract(
        MyContract.abi,
        deployedNetwork.address
    );

    contract.methods.getData().call({}, results => {})

    // contract.methods.getData().call()
    //     .then(result => /* do what you want with result

    const result = await contract.methods.getData().call()
    console.log(result);

}
init();


// npm install truffle
// npm install ganache
// truffle init

// https://www.youtube.com/watch?v=xChKky8kb6A&list=PLbbtODcOYIoFs0PDlTdxpEsZiyDR2q9aA&index=6
