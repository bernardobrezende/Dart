import 'package:meta/meta.dart';

int indexOf<T extends num, String>({ @required List<T> list, @required T element }) {
  binarySearch(list, start, end, element) {
    if (end < start) return -1;
    var middleIndex = start + (end - 1) ~/ 2;
    T middle = list[middleIndex];
    if (middle == element) {
      return middleIndex;
    }
    var begin = element < middle ? start : middleIndex + 1;
    var finish = element < middle ? middleIndex - 1 : end;
    return binarySearch(list, begin, finish, element);
  };

  return binarySearch(list, 0, list.length - 1, element);
}
