import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/exercise2.dart';

void main() {
  test('Given first 0 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(0);
    expect(0, result);
  });
  test('Given first 1 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(1);
    expect(2, result);
  });
  test('Given first 10 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(10);
    expect(129, result);
  });
  test('Given first 12 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(12);
    expect(197, result);
  });
  test('Given first 25 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(25);
    expect(1060, result);
  });
  test('Given first 5.0 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(5.0);
    expect(28, result);
  });
  test('Given first 17.0 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(17.0);
    expect(440, result);
  });
  test('Given first 22.0 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(22.0);
    expect(791, result);
  });
  test('Given first 99 prime numbers, return right value', () {
    final result = sumOfNPrimeNumbers(99);
    expect(23592, result);
  });

  test('Input -1, return an exception', () {
    expect(
      () => sumOfNPrimeNumbers(-1),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'n must be greater than 0',
        ),
      ),
    );
  });
  test('Input n is String, return an exception', () {
    expect(
      () => sumOfNPrimeNumbers('25'),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid input',
        ),
      ),
    );
  });
  test('Input n is boolean, return an exception', () {
    expect(
      () => sumOfNPrimeNumbers(false),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid input',
        ),
      ),
    );
  });
  test('Input n is Array, return an exception', () {
    expect(
      () => sumOfNPrimeNumbers([4, 7]),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid input',
        ),
      ),
    );
  });
  test('Input n is 100, return an exception', () {
    expect(
      () => sumOfNPrimeNumbers(100),
      throwsA(
        predicate(
          (e) => e is ArgumentError,
        ),
      ),
    );
  });
  test('Input n is 120, return an exception', () {
    expect(
      () => sumOfNPrimeNumbers(120),
      throwsA(
        predicate(
          (e) => e is ArgumentError,
        ),
      ),
    );
  });
}
