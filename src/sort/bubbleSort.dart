import 'package:meta/meta.dart';

List<int> sort({ @required List<int> numbers }) {
  final swap = (list, idx1, idx2) {
    // xor swap
    list[idx1] ^= list[idx2];
    list[idx2] ^= list[idx1];
    list[idx1] ^= list[idx2];
  };
  final doSort = (numbers) {
    var swapped;
    do {
      swapped = false;
      for (int j = 0; j < numbers.length - 1; j++) {
        if (numbers[j] > numbers[j + 1]) {
          swap(numbers, j, j + 1);
          swapped = true;
        }
      }
    } while (swapped);
    return numbers;
  };

  return doSort(numbers);
}
