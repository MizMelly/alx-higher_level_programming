#!/usr/bin/node
/* a class Square that defines a square and inherits from Square of 5-square.js */
const SquareBase = require('./5-square.js');

class Square extends SquareBase {
  charPrint (c) {
    if (c == null) {
      c = 'X';
    }
    for (let i = 0; i < this.width; i++) {
      console.log(c.repeat(this.width));
    }
  }
}

module.exports = Square;
