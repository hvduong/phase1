//ex: input month = 12 => quartherOfYear = 4
// throw ArgumentError:
//  message 'Error: month must be less than or equal to 12 and greater than or equal to 1'
//  message 'Error: Invalid input double' if n's type is not an list or a double

int findQuarterOfYear(dynamic month) {
  switch (month) {
    case 1:
        print("Quy 1");
      break;
       case 2:
        print("Quy 1");
      break;
       case 3:
        print("Quy 1");
      break;
       case 4:
        print("Quy 2");
      break;
       case 5:
        print("Quy 2");
      break;
       case 6:
        print("Quy 2");
      break;
       case 7:
        print("Quy 3");
      break;
       case 8:
        print("Quy 3");
      break;
       case 9:
        print("Quy 3");
      break;
       case 10:
        print("Quy 4");
      break;
       case 11:
        print("Quy 4");
      break;
       case 12:
        print("Quy 4");
      break;
    default: 1;
  }
  return month;
}
