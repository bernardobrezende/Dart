import 'package:meta/meta.dart';
import '../extensions/list.dart';

List<num> sort({ @required List<num> numbers }) {
  var swapped;
  do {
    swapped = false;
    for (num j = 0; j < numbers.length - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        numbers.swap(j, j + 1);
        swapped = true;
      }
    }
  } while (swapped);
  return numbers;
}
