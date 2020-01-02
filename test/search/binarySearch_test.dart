import "package:test/test.dart";
import "../../src/search/binarySearch.dart";

void main() {
  test("element present in list", () {
    expect(indexOf(list: [ -7, -6, -4, 1, 3, 4, 5, 6 ], element: 5), equals(6));
  });
  test("element not present in list", () {
    expect(indexOf(list: [ -7, -6, -4, 1, 3, 4, 5, 6 ], element: 15), equals(-1));
  });
  test("empty list", () {
    expect(indexOf(list: List<int>(), element: -7), equals(-1));
  });
  test("single element", () {
    expect(indexOf(list: [ -7 ], element: -7), equals(0));
  });
  test("repeated element", () {
    expect(indexOf(list: [ -8, -7, -7, -7, -6 ], element: -7), equals(1));
  });
}
