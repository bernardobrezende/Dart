import 'package:meta/meta.dart';
import 'dart:math';
import '../extensions/list.dart';

// This implementation uses the original gap sequence from Donald Shell:
// gap = n / 2^i
List<num> sort({ @required List<num> numbers }) {
  for (num i = 1, gap = numbers.length ~/ 2; i < numbers.length && gap > 0; gap = numbers.length ~/ pow(2, ++i)) {
    for (num j = gap; j < numbers.length; j++) {
      if (numbers[j] < numbers[j-gap]) {
        numbers.swap(j, j - gap);
        j = gap;
      }
    }
  }
  return numbers;
}
