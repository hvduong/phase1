import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise4.dart';

void main() {
  test('Input December, return right value', () {
    final result = findQuarterOfYear(12);
    expect(4, result);
  });
  test('Input January, return right value', () {
    final result = findQuarterOfYear(1);
    expect(1, result);
  });

  test('Input n is String, return an exception', () {
    expect(
      () => findQuarterOfYear("n"),
      throwsA(
        predicate(
          (e) =>
              e is ArgumentError && e.message == 'Error: Invalid input String',
        ),
      ),
    );
  });

  test('Input n is Array dynamic, return an exception', () {
    expect(
      () => findQuarterOfYear([]),
      throwsA(
        predicate(
          (e) =>
              e is ArgumentError &&
              e.message == 'Error: Invalid input List<dynamic>',
        ),
      ),
    );
  });
  test('Input n is bool, return an exception', () {
    expect(
      () => findQuarterOfYear(true),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Error: Invalid input bool',
        ),
      ),
    );
  });
  test('Input n is , return an exception', () {
    expect(
      () => findQuarterOfYear(1.0),
      throwsA(
        predicate(
          (e) =>
              e is ArgumentError && e.message == 'Error: Invalid input double',
        ),
      ),
    );
  });
  test('Input n > 12 , return an exception', () {
    expect(
      () => findQuarterOfYear(13),
      throwsA(
        predicate(
          (e) =>
              e is ArgumentError &&
              e.message ==
                  'Error: month must be less than or equal to 12 and greater than or equal to 1',
        ),
      ),
    );
  });
}
