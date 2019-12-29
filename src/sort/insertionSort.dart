import 'package:meta/meta.dart';

List<int> sort({ @required List<int> numbers }) {
  for (int i = 1; i < numbers.length; i++) {
    int mark = numbers[i];
    int j = i - 1;
    while (j >= 0 && numbers[j] > mark) {
      numbers[j + 1] = numbers[j];
      j--;
    }
    numbers[j + 1] = mark;
  }
  return numbers;
}
