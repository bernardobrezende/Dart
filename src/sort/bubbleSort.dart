import 'package:meta/meta.dart';
import '../common/swap.dart';

List<num> sort({ @required List<num> numbers }) {
  final doSort = (numbers) {
    var swapped;
    do {
      swapped = false;
      for (num j = 0; j < numbers.length - 1; j++) {
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
