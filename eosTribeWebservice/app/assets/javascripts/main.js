class Requests {
  constructor(libraryID) {
    this.baseURL = "https://floating-woodland-64068.herokuapp.com/";
    this.libraryID = libraryID;
  }

  // ajax call function to be used for the class methods below
  ajaxCall(actionStr, urlStr, dataObj = {}) {
    return new Promise((resolve) => {
      let req = $.ajax({
        type: actionStr,
        url: `${this.baseURL}${urlStr}`,
        data: dataObj
      });

      req.done((data) => {
        resolve(data);
      });

      req.fail(() => {
        console.log("AJAX request failed");
        resolve(undefined);
      });

    });
  }

}
