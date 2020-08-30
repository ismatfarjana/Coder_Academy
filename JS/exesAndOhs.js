const exesAndOhs = (string) => {
 const countOfO = new RegExp("o","gi");
 const oh = string.match(countOfO).length;
 const countOfX = new RegExp("x","gi");
 const ex = string.match(countOfX).length;
 console.log(string);
 return ( oh == ex ? true : false);

}

console.log(exesAndOhs("ooxx"));
console.log(exesAndOhs("oOxXxoX"));