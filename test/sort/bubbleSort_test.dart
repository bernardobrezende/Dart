import "package:test/test.dart";
import "../../src/sort/bubbleSort.dart";

void main() {
  test( "Bubble Sort must pass", () {
    expect( sort(), equals( [ 1, 2, 3 ] ) );
  } );
}