// the 3 ways to listen to smart contract

// Reading events with Web3

//1. Transaction receipt
//2. getPastEvents()
//3. Real-time events

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
    const receipt = await contract.methods.emitEvent('hey').send({  // reciept = you get more information including any events 
        from: address[0]
    });
    await contract.methods
    .emitEvent('hey hey')
    .send({
        from: address[0]
    });

    //read all the events
    const results = await contract.getPastEvents(
        'MyEvent',
        {
            filter: {
                value: 'hey',
                date: 15352546
            }
            fromBlock: 0
        }
    );

    console.log(results);

}
init();


// hhttps://www.youtube.com/watch?v=oQ5yPKdjxFQ&list=PLbbtODcOYIoFs0PDlTdxpEsZiyDR2q9aA&index=8
