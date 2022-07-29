// Send Ether to smart contract
// 1. Execute a function
// 2. Send Ether directly

const { result } = require('lodash');

const init = async () => {

    const web3 = new Web3('http://localhost:9545');

    const id = await web3.eth.net.getId();
    const deployedNetwork = MyContract.networks[id];
    const contract = new web3.eth.contract(
        MyContract.abi,
        deployedNetwork.address
    );

    const address = web3.eth.getAccouts();

    await contract.methods.sendEther().send({
        from: address[0],
        value: '10000',
    });

    console.log(await contract.methods.functionCalled().call());

    await web3.eth.sendTransaction({
        from: address[0],
        to: contract.options,address,
        value: '10000'
    });

    console.log(await contract.methods.functionCalled().call());

    await web3.eth.sendTransaction({
        from: address[0],
        to: address[1],
        value: '10000'
    })
}
init();


// https://www.youtube.com/watch?v=xChKky8kb6A&list=PLbbtODcOYIoFs0PDlTdxpEsZiyDR2q9aA&index=6

