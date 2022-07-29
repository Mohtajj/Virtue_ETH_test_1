const Web3 = require('web3');

const customProvider = {
    sendAsync: (payload, cb) => {
        consol.log('you called');
        consol.log(payload);
        cb(undefined, 100);
    }
};

//const provider = new Web3.providers.HttpProvider('http://localhost:8545');

const web3 = new Web3(window.web3.currentProvider);
// connected to the blockchaon !!!

web3.eth.getBlockNumber()
.then(() => console.log('done!'))

//https://www.youtube.com/watch?v=FNfcdkPb4rg&list=PLbbtODcOYIoFs0PDlTdxpEsZiyDR2q9aA&index=3
