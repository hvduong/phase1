import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise_danhsachemail.dart';

main() {
  test('Test_case_1', () {
    final result = listEmail('tran van Minh');
    expect('minh.tran@rikai.technology', result);
  });
   test('Test_case_2', () {
    final result = listEmail('Le trung Dung');
    expect('dung.le@rikai.technology', result);
  });
    test('Test_case_3', () {
    final result = listEmail('Nguyen ngoc Chanh Tu');
    expect('tu.nguyen@rikai.technology', result);
  });
   test('Test_case_4', () {
    final result = listEmail('Pham Ba Loi');
    expect('loi.pham@rikai.technology', result);
  });
  test('Test_case_5', () {
    final result = listEmail('tran van Minh      ');
    expect('minh.tran@rikai.technology', result);
  });
   test('Test_case_6', () {
    final result = listEmail('       Le trung Dung');
    expect('dung.le@rikai.technology', result);
  });
    test('Test_case_7', () {
    final result = listEmail('     Nguyen   ngoc    Chanh     Tu      ');
    expect('tu.nguyen@rikai.technology', result);
  });
  test('Input isEmpty, return an exception', () {
    expect(
      () => listEmail(''),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid Input',
        ),
      ),
    );
  });
  test('Input text length cannot be more than 50 characters', () {
    expect(
      () => listEmail('Trong khi đó, số bài báo công bố quốc tế của Trường ĐH Mở TP.HCM tăng từ 16 bài năm 2017 lên 62 bài năm 2018. PGS.TS Nguyễn Minh Hà, hiệu trưởng nhà trường, cho biết trường bắt đầu chính sách thưởng công bố quốc tế từ năm 2017 và có điều chỉnh mức thưởng theo hướng tăng lên. Mức thưởng dao động từ 40-100 triệu đồng/bài tùy loại tạp chí.'),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid Input',
        ),
      ),
    );
  });
}
