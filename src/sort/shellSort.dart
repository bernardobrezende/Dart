import 'package:meta/meta.dart';
import 'dart:math';

// This implementation uses the original gap sequence from Donald Shell:
// gap = n / 2^i
List<num> sort({ @required List<num> numbers }) {
  final swap = (list, idx1, idx2) {
    // xor swap
    list[idx1] ^= list[idx2];
    list[idx2] ^= list[idx1];
    list[idx1] ^= list[idx2];
  };
  for (num i = 1, gap = numbers.length ~/ 2; i < numbers.length && gap > 0; gap = numbers.length ~/ pow(2, ++i)) {
    for (num j = gap; j < numbers.length; j++) {
      if (numbers[j] < numbers[j-gap]) {
        // swap
        swap(numbers, j, j-gap);
        j = gap;
      }
    }
  }
  return numbers;
}
