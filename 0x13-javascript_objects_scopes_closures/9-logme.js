#!/usr/bin/node
/* a function that prints the number of arguments already printed and the new argument value */
exports.logMe = (function () {
  let count = 0;
  return function (item) {
    console.log(`${count}: ${item}`);
    count++;
  };
})();
