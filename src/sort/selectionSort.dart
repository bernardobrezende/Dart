import 'package:meta/meta.dart';

List<int> sort({ @required List<int> numbers }) {
  final findAndRemoveMin = (numbers) {
    int minIndex = 0;
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < numbers[minIndex]) {
        minIndex = i;
      }
    }
    return numbers.removeAt(minIndex);
  };
  final doSort = (numbers) {
    List<int> sorted = [];
    while (numbers.length > 0) {
      sorted.add(findAndRemoveMin(numbers));
    }
    return sorted;
  };
  return doSort(numbers);
}
