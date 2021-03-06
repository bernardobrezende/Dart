import "package:test/test.dart";
import "../../src/sort/quickSort.dart";
import "../../src/sort/quickSortFunctional.dart" as func;

void main() {
  test("completely unsorted list", () {
    expect(sort(numbers: [ 3, 2, 1, -1 ]), equals([ -1, 1, 2, 3 ]));
    expect(func.sort(numbers: [ 3, 2, 1, -1 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("nearly unsorted list", () {
    expect(sort(numbers: [ 3, 1, 2, -1 ]), equals([ -1, 1, 2, 3 ]));
    expect(func.sort(numbers: [ 3, 1, 2, -1 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("unsorted bigger list", () {
    expect(sort(numbers: [ 3, 5, 1, -1, 6, 2, -8 ]), equals([ -8, -1, 1, 2, 3, 5, 6 ]));
    expect(func.sort(numbers: [ 3, 5, 1, -1, 6, 2, -8 ]), equals([ -8, -1, 1, 2, 3, 5, 6 ]));
  });
  test("completely sorted list", () {
    expect(sort(numbers: [ -1, 1, 2, 3 ]), equals([ -1, 1, 2, 3 ]));
    expect(func.sort(numbers: [ -1, 1, 2, 3 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("nearly sorted list", () {
    expect(sort(numbers: [ -1, 1, 3, 2 ]), equals([ -1, 1, 2, 3 ]));
    expect(func.sort(numbers: [ -1, 1, 3, 2 ]), equals([ -1, 1, 2, 3 ]));
  });
  test("single element list", () {
    expect(sort(numbers: [ -1 ]), equals([ -1 ]));
    expect(func.sort(numbers: [ -1 ]), equals([ -1 ]));
  });
  test("duplicate element list", () {
    expect(sort(numbers: [ -1, 0, -1 ]), equals([ -1, -1, 0 ]));
    expect(func.sort(numbers: [ -1, 0, -1 ]), equals([ -1, -1, 0 ]));
  });
  test("empty list", () {
    expect(sort(numbers: []), equals([]));
    expect(func.sort(numbers: []), equals([]));
  });
}
