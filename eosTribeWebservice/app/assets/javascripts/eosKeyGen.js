const ecc = require('eosjs-ecc');

let keyPair;
let privateKey;
let publicKey;
let delimiterIndex;

ecc.randomKey().then(privateKey => {
  keyPair = privateKey + "|" + ecc.privateToPublic(privateKey); // wif|EOSkey
  delimiterIndex = keyPair.indexOf("|");
});


function getPrivateKey() {
  privateKey = keyPair.slice(0, delimiterIndex);
  return privateKey;
}

function getPublicKey() {
  publicKey = keyPair.slice(delimiterIndex + 1, -1);
  return publicKey;
}
