import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/exercise13.dart';

void main() {
  test(
    'test 1',
    (() {
      expect(String, typeOfInput('String'));
    }),
  );
  test(
    'test 2',
    (() {
      expect(int, typeOfInput(12));
    }),
  );
  test(
    'test 3',
    (() {
      expect(double, typeOfInput(8.3));
    }),
  );
  test(
    'test 4',
    (() {
      expect(bool, typeOfInput(true));
    }),
  );
  test(
    'test 5',
    (() {
      expect(Map<String, int>, typeOfInput({'key': 2}));
    }),
  );
  test(
    'test 6',
    (() {
      expect(Map<String, bool>, typeOfInput({'key': true}));
    }),
  );
  test(
    'test 7',
    (() {
      expect(
          Map<String, Set>,
          typeOfInput({
            'key': {'subKey', 2, 3, 4}
          }));
    }),
  );
  test(
    'test 8',
    (() {
      expect(
          Map<String, Set<String>>,
          typeOfInput({
            'key': {'subKey', '2', '3', '4'}
          }));
    }),
  );
  test(
    'test 9',
    (() {
      expect(Map<String, List>, typeOfInput({'key': []}));
    }),
  );
  test(
    'test 10',
    (() {
      expect(
          Map<String, List<int>>,
          typeOfInput({
            'key': [2]
          }));
    }),
  );
  test(
    'test 11',
    (() {
      expect(List<int>, typeOfInput([1, 2, 3]));
    }),
  );
  test(
    'test 12',
    (() {
      expect(List<String>, typeOfInput(['1', '2', '3']));
    }),
  );
  test(
    'test 13',
    (() {
      expect(List<Object>, typeOfInput(['1', '2', 3]));
    }),
  );
  test(
    'test 14',
    (() {
      expect(Set, typeOfInput({'1', '2', 3}));
    }),
  );
  test(
    'test 15',
    (() {
      expect(Set<String>, typeOfInput({'1', '2', '3'}));
    }),
  );
  test(
    'test 16',
    (() {
      expect(Set<int>, typeOfInput({1, 2, 3}));
    }),
  );
  test(
    'test 17',
    (() {
      expect(Set<bool>, typeOfInput({true, false}));
    }),
  );
}
