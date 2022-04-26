import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise_tongsochuso.dart';

main() {
  test('test_case_1', () {
    final result = tongsocuamotchuso(12341);
    expect(11, result);
  });
    test('test_case_2', () {
    final result = tongsocuamotchuso(1234101191);
    expect(23, result);
  });
   test('Input 0, return an exception', () {
    expect(
      () => tongsocuamotchuso(0),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid Input',
        ),
      ),
    );
  }); 
   test('Input -1, return an exception', () {
    expect(
      () => tongsocuamotchuso(0),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid Input',
        ),
      ),
    );
  }); 
    test('Invalid result, return an exception', () {
    expect(
      () => tongsocuamotchuso(123),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid result',
        ),
      ),
    );
  }); 
}
