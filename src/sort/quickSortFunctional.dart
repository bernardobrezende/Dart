import 'package:meta/meta.dart';

List<num> sort({ @required List<num> numbers }) {
  if (numbers.length <= 1) return numbers;
  num pivot = numbers[numbers.length ~/ 2];
  var lt = numbers.where((n) => n < pivot).toList();
  var gt = numbers.where((n) => n > pivot).toList();
  var equalsToPivot = numbers.where((n) => n == pivot).toList();
  return [...sort(numbers: lt), ...equalsToPivot, ...sort(numbers: gt)];
}
