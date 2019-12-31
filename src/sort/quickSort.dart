import 'package:meta/meta.dart';

List<num> sort({ @required List<num> numbers }) {
  doSort(numbers, start, end) {
    if (numbers.length <= 1) return numbers;
    num pivot = numbers[(start + end) ~/ 2];
    num low = start;
    num high = end;
    while (low <= high) {
      while (numbers[low] < pivot) low++;
      while (numbers[high] > pivot) high--;
      if (low <= high) {
        num temp = numbers[low];
        numbers[low] = numbers[high];
        numbers[high] = temp;
        low++;
        high--;
      }
    }
    if (start < high) {
      doSort(numbers, start, high);
    }
    if (low < end) {
      doSort(numbers, low, end);
    }
  };
  doSort(numbers, 0, numbers.length - 1);
  return numbers;
}
