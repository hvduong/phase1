import 'package:flutter_test/flutter_test.dart';
import 'package:phase1/exercise/excercise_lamdephoten.dart';

main() {
  test('Test_case_1', () {
    final result = beautyName('Le van tung');
    expect('Le Van Tung', result);
  });
   test('Test_case_2', () {
    final result = beautyName('Nguyen Van Anh');
    expect('Nguyen Van Anh', result);
  });
   test('Test_case_3', () {
    final result = beautyName('TRAN THI KHANH THAO');
    expect('Tran Thi Khanh Thao', result);
  });
    test('Test_case_4', () {
    final result = beautyName('A vU dEp TrAi');
    expect('A Vu Dep Trai', result);
  });
   test('Input isEmpty, return an exception', () {
    expect(
      () => beautyName(''),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid Input',
        ),
      ),
    );
  });
  test('Input text length cannot be more than 200 characters', () {
    expect(
      () => beautyName('Trong khi đó, số bài báo công bố quốc tế của Trường ĐH Mở TP.HCM tăng từ 16 bài năm 2017 lên 62 bài năm 2018. PGS.TS Nguyễn Minh Hà, hiệu trưởng nhà trường, cho biết trường bắt đầu chính sách thưởng công bố quốc tế từ năm 2017 và có điều chỉnh mức thưởng theo hướng tăng lên. Mức thưởng dao động từ 40-100 triệu đồng/bài tùy loại tạp chí.'),
      throwsA(
        predicate(
          (e) => e is ArgumentError && e.message == 'Invalid Input',
        ),
      ),
    );
  });
}
