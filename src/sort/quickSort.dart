import 'package:meta/meta.dart';

List<int> sort({ @required List<int> numbers }) {
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

void main() {
  print(sort(numbers:[ 3, 5, 1, -1, 6, 2, -8 ]));
}
