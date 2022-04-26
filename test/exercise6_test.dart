import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/exercise6.dart';

void main() {
  test('Test int 1', () {
    expect(true, checkPalindrome(1212121));
  });
  test('Test int 2', () {
    expect(false, checkPalindrome(23423534234));
  });
  test('Test String 1', () {
    expect(true, checkPalindrome('121121121'));
  });
  test('Test String 2', () {
    expect(true, checkPalindrome('abcde edcba'));
  });
  test('Test String 3', () {
    expect(false, checkPalindrome('invalid result'));
  });
  test('Test double 1', () {
    expect(() => checkPalindrome(7878787878.0),
        throwsA(predicate((e) => e is TypeError)));
  });
  test('Test array', () {
    expect(() => checkPalindrome([2, 2, 2, 2, 2]),
        throwsA(predicate((e) => e is TypeError)));
  });
  test('Test map', () {
    expect(() => checkPalindrome({'a': 2, 'b': 3, 'c': 2}),
        throwsA(predicate((e) => e is TypeError)));
  });
}
