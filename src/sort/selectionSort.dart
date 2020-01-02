import 'package:meta/meta.dart';

List<num> sort({ @required List<num> numbers }) {
  final findAndRemoveMin = (numbers) {
    num minIndex = 0;
    for (num i = 1; i < numbers.length; i++) {
      if (numbers[i] < numbers[minIndex]) {
        minIndex = i;
      }
    }
    return numbers.removeAt(minIndex);
  };
  final doSort = (numbers) {
    List<num> sorted = [];
    while (numbers.length > 0) {
      sorted.add(findAndRemoveMin(numbers));
    }
    return sorted;
  };
  return doSort(numbers);
}
