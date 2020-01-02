extension ListExtensions<T extends num> on List<T> {
  void swap<T>(idx1, idx2) {
    num temp = this[idx1];
    this[idx1] = this[idx2];
    this[idx2] = temp;
  }
}
