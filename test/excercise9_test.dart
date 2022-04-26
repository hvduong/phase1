import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise9.dart';

void main() {
  test('Input maxtrix arr, return right value', () {
    final arr = [
      [27, 35, 18, 1, 85],
      [68, 45, 153, 87, 39],
      [22, 43, 370, 87, 13],
      [38, 69, 23, 26, 35],
      [82, 25, 66, 3, 59],
    ];

    final result = sumInMaxtrix(arr);
    expect(527, result);
  });
}
