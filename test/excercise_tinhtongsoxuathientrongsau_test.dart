import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise_tinhtongsoxuathientrongsau.dart';

main() {
  
  test('Test_case_1', () {
    final result = sum("5 random strings contain 234 numbers");
    expect(239, result);
  });
  test('Test_case_2', () {
    final result = sum("1 /// -2 abc 234 ... ,,, iot");
    expect(233, result);
  });
  test('Test_case_3', () {
    final result = sum("1 duong -2 iot 8");
    expect(7, result);
  });
     test('Input isEmpty, return an exception', () {
    expect(
      () => sum(''),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid Input',
        ),
      ),
    );
  });
  
}
