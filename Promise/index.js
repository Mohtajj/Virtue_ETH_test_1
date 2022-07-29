// let p = new Promise((resolve, reject) => {
//     let a = 5+1;

//     if (a ==2) {
//         resolve('222');
//     }else{
//         reject('452')
//     }
// })

// p.then((message) => {
//     console.log('hello ' + message)
// }).catch((message) => {
//     console.log('hello ' + message)
// })

// Example 2
const userLeft = false
const userWatchingCatMeme = false

function watchTutorialPromise() {
    return new Promise ((resolve, reject) => {
        if (userLeft) {
            reject({
                name: 'User Left',
                message: ':('
            })
        }else if (userWatchingCatMeme) {
            reject({
                name: 'User Watching Cat Meme',
                message: 'WebDevSimplified < Cat'
            })
        }else {
            resolve('Thumb up and Subscribe')
        }
        
    })
}

watchTutorialPromise().then((message) => {
    console.log('Success:' + message)
}).catch((error) => {
    console.log(error.name + ' ' + error.message)
})
