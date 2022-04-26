import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise1.dart';

main() {
  test('Given normal sum, return right value', () {
    final result = sum(10, 20);
    expect(30, result);
  });
}
