import "package:test/test.dart";
import "../../src/sort/selectionSort.dart";

void main() {
  test("completely unsorted list", () {
    expect(sort(numbers: [ 3, 2, 1, -1 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("nearly unsorted list", () {
    expect(sort(numbers: [ 3, 1, 2, -1 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("completely sorted list", () {
    expect(sort(numbers: [ -1, 1, 2, 3 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("nearly sorted list", () {
    expect(sort(numbers: [ -1, 1, 3, 2 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("single element list", () {
    expect(sort(numbers: [ -1 ]), equals([ -1 ]));
  });
  test("duplicate element list", () {
    expect(sort(numbers: [ -1, 0, -1 ]), equals([ -1, -1, 0 ]));
  });
  test("empty list", () {
    expect(sort(numbers: []), equals([]));
  });
}
