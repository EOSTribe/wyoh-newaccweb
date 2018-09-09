// const ecc = require('eosjs-ecc');

// ecc.randomKey().then(privateKey => {
//   let privKey = privateKey;
//   let pubKey = ecc.privateToPublic(privateKey);
//
//   document.getElementById('pubkey').value = pubKey;
// });
let pubKey;

let privKey;

eosjs_ecc.randomKey().then(privateKey => {
  privKey = privateKey;
  pubKey = eosjs_ecc.privateToPublic(privateKey);

  document.getElementById('eos_account_pubkey').value = pubKey;

  console.log(pubKey);
});

// eosjs_ecc.randomKey().then(privateKey => {
//   keyPair = privateKey + "|" + eosjs_ecc.privateToPublic(privateKey); // wif|EOSkey
//   console.log(keyPair);
// });

// function getPrivKey() {
//   let privKey;
//   let keyPairLocal = keyPair;
//   let delimiterIndex = keyPairLocal.indexOf("|");
//   privKey = keyPairLocal.slice(0, delimiterIndex);
//   console.log(privKey);
//   return privKey;
// }
//
// function getPubKey() {
//   let pubKey;
//   let keyPairLocal = keyPair;
//   let delimiterIndex = keyPairLocal.indexOf("|");
//   pubKey = keyPairLocal.slice(delimiterIndex + 1, -1);
//   console.log(pubKey);
//   return pubKey;
// }
