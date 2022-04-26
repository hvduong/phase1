// import 'dart:io';

triangleTest(a, b, c) {
    var result= "Ket qua";
    var triangle = "";
    if (a + b <= c || a + c <= b || b + c <= a) {
      result = "Tam giác này không tồn tại!";
    } else {
      if ((a == b) && (b == c)) {
        triangle = "đều";
      } else {
        if (a * a + b * b == c * c ||
            a * c + c * c == b * b ||
            b * b + c * c == a * c) {
          triangle = "vuông";
        }
        if (a == b || a == c || b == c) {
          triangle = "cân";
        } else {
          triangle = "thường";
        }
      }
      result = "Đây là tam giác: $triangle";
    }
  }

