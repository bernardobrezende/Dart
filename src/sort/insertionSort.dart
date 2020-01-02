import 'package:meta/meta.dart';

List<num> sort({ @required List<num> numbers }) {
  for (num i = 1; i < numbers.length; i++) {
    num mark = numbers[i];
    num j = i - 1;
    while (j >= 0 && numbers[j] > mark) {
      numbers[j + 1] = numbers[j];
      j--;
    }
    numbers[j + 1] = mark;
  }
  return numbers;
}
