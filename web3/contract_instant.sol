// 1. contract Address
// 2. contract ABI

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
}
init();





// https://www.youtube.com/watch?v=nvBAalvRHOI&list=PLbbtODcOYIoFs0PDlTdxpEsZiyDR2q9aA&index=4
