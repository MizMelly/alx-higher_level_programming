#!/usr/bin/node
/* A class Rectangle that defines a rectangle */
class Rectangle {
    constructor(w, h) {
        if (Number.isInteger(w) && w > 0 && Number.isInteger(h) && h > 0) {
            this.width = w;
            this.height = h;
        } else {
           
            return {};  
        }
    }
}

module.exports = Rectangle;
