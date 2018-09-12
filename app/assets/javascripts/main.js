// class Requests {
//   constructor() {
//     this.baseURL = "http://api1.eostribe.io:3000/newaccount";
//   }
//
//   // ajax call function to be used for the class methods below
//   ajaxCall(actionStr, dataObj = {}) {
//     return new Promise((resolve) => {
//       let req = $.ajax({
//         type: actionStr,
//         url: `${this.baseURL}`,
//         data: {
//           name: dataObj.name,
//           email: dataObj.email,
//           pubkey: dataObj.pubkey
//         }
//       });
//
//       req.done((data) => {
//         resolve(data);
//       });
//
//       req.fail(() => {
//         console.log("AJAX request failed");
//         resolve(undefined);
//       });
//
//     });
//
//   }
//
//   createAccount(accountInfo) {
//     return this.ajaxCall('POST', {accountInfo});
//   }
// }
