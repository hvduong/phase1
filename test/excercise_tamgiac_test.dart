import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/tamgiac.dart';
// message : null // tam abc nhap vao khong hop le
main() {
 test('Input 1 2 3, return an exception', () {
    expect(
      () => triangleTest(0,1,1),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid input',
        ),
      ),
    );
  });  
  test('Test_case_1', () {
    final result = triangleTest(6,5,9);
    expect('Tam giac tu', result);
  });
   test('Test_case_2', () {
    final result = triangleTest(4,5,6);
    expect('Tam giac nhon', result);
  });
   test('Test_case_3', () {
    final result = triangleTest(3,4,5);
    expect('Tam giac vuong', result);
  });
   test('Test_case_4', () {
    final result = triangleTest(3,3,5);
    expect('Tam giac can', result);
  });
   test('Test_case_5', () {
    final result = triangleTest(7.071067812,5,5);
    expect('Tam giac vuong can', result);
  });
   test('Test_case_6', () {
    final result = triangleTest(5,5,5);
    expect('Tam giac deu', result);
  });
}
