// xor swap
swap(list, idx1, idx2) {
  list[idx1] ^= list[idx2];
  list[idx2] ^= list[idx1];
  list[idx1] ^= list[idx2];
}
