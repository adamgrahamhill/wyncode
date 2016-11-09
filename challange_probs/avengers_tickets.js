function tickets(peopleInLine){
  var cashRegister = {
    "twentyfive": 0,
    "fifty": 0,
    "hundo": 0
  };
  for (var i = 0; i < peopleInLine.length; i++) {
    if (peopleInLine[i] === 25) {
      cashRegister.twentyfive ++ ;
    } else if (peopleInLine[i] === 50) {
      cashRegister.fifty ++;
      if (cashRegister.twentyfive >= 1) {
        cashRegister.twentyfive -- ;
      }  else {
        return "NO";
      }
      
    } else {
      if (cashRegister.fifty >= 1 && cashRegister.twentyfive >= 1) {
        cashRegister.fifty --;
        cashRegister.twentyfive --;
      } else if (cashRegister.twentyfive >= 3) {
        cashRegister.twentyfive -= 3;
      } else {
        return "NO";
      }
    }
  }
  return "YES";
}

// 100, need a 50 + a 25, or 3 25s
//50 need a 25
// 25 all good


