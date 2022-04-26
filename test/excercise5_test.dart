import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise5.dart';

void main() {
  test('Input array have 8 is Smallest Even Number, return right value', () {
    final result = findTheSmallestEvenNumber([1, 3, 5, 6, 7, 8]);
    expect(8, result);
  });
  test('Input array have 6 is Smallest Even Number , return right value', () {
    final result = findTheSmallestEvenNumber([1, 2, 3, 4, 5, 6, 8, 10]);
    expect(6, result);
  });

  test('Input array with no number is Smallest Even Number, return right value',
      () {
    final result = findTheSmallestEvenNumber([1, 3, 5, 7, 9]);
    expect(null, result);
  });

  
}
