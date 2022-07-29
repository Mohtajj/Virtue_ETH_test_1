// 1. call
// 2. trandaction
const { result } = require('lodash');

const init = async () => {


    const { async } = require('regenerator-runtime');
    const Web3 = require('web3');
    //const MyContract = require ('./build/contracts/Migrations.json');
    const web3 = new Web3('http://localhost:9545');

    const id = await web3.eth.net.getId();
    const deployedNetwork = MyContract.networks[id];
    const contract = new web3.eth.contract(
        MyContract.abi,
        deployedNetwork.address
    );

    const address = web3.eth.getAccouts();
    await contract.methods.setData(10).send({
        from: address[0],
    }), function(receipt) => {} // First method

    // .then(receipt => { // promiss based API Start
    //     //
    // })
    // .catch(error => {

    // })
    // //
    console.log(receipt); // Promiss based API End

    .on('receipt', receipt => { //second method start

    });
    .on('confirmation', (confirmationNumber, receipt)= => {

    });
    .on('error', (error, receipt) => {

    }); // second method End

}
init();


// https://www.youtube.com/watch?v=xChKky8kb6A&list=PLbbtODcOYIoFs0PDlTdxpEsZiyDR2q9aA&index=6

