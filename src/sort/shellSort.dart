import 'package:meta/meta.dart';
import 'dart:math';

// This implementation uses the original gap sequence from Donald Shell:
// gap = n / 2^i
List<int> sort({ @required List<int> numbers }) {
  for (int i = 1, gap = numbers.length ~/ 2; i < numbers.length && gap > 0; gap = numbers.length ~/ pow(2, ++i)) {
    for (int j = gap; j < numbers.length; j++) {
      if (numbers[j] < numbers[j-gap]) {
        // swap
        numbers[j] ^= numbers[j-gap];
        numbers[j-gap] ^= numbers[j];
        numbers[j] ^= numbers[j-gap];
        j = gap;
      }
    }
  }
  return numbers;
}
