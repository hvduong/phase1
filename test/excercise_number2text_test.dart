import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/exercise_number_to_text.dart';

main() {
  test('Test số 8 thành chữ', () {
    const input = "8";
    final output = convertNumber2Text(input);
    expect(output, 'tám');
  });

  test('Test số 300 thành chữ', () {
    const input = "300";
    final output = convertNumber2Text(input);
    expect(output, 'ba trăm');
  });

  test('Test số 85 thành chữ', () {
    const input = "85";
    final output = convertNumber2Text(input);
    expect(output, 'tám mươi lăm');
  });

  test('Test số 902 thành chữ', () {
    const input = "902";
    final output = convertNumber2Text(input);
    expect(output, 'chín trăm lẻ hai');
  });

  test('Test số 567890 thành chữ', () {
    const input = "567890";
    final output = convertNumber2Text(input);
    expect(output, 'năm trăm sáu mươi bảy ngàn tám trăm chín mươi');
  });

  test('Test số 100200300400 thành chữ', () {
    const input = "100200300400";
    final output = convertNumber2Text(input);
    expect(output, 'một trăm tỷ hai trăm triệu ba trăm ngàn bốn trăm');
  });

  test('Test số 1000000000000000000 thành chữ', () {
    const input = "1000000000000000000";
    final output = convertNumber2Text(input);
    expect(output, 'một tỷ tỷ');
  });

  test('Test số -1 thành chữ', () {
    const input = "-1";
    final output = convertNumber2Text(input);
    expect(output, 'âm một');
  });

  test('Test số -1000000 thành chữ', () {
    const input = "-1000000";
    final output = convertNumber2Text(input);
    expect(output, 'âm một triệu');
  });

  test('Test số 0 thành chữ', () {
    const input = "0";
    final output = convertNumber2Text(input);
    expect(output, 'không');
  });

  test('Test abcd thành chữ', () {
    const input = "abcd";
    final output = convertNumber2Text(input);
    expect(output, 'Không phải là số');
  });
}
