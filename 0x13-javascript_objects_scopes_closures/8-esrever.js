#!/usr/bin/node
/* a function that returns the reversed version of a list */
exports.esrever = function (list) {
  let len = list.length - 1;
  let i = 0;
  while (i < len) {
    const aux = list[len];
    list[len] = list[i];
    list[i] = aux;
    i++;
    len--;
  }
  return list;
};
