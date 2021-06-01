class CountStore {
  int count = 0;

  CountStore({required this.count});

  CountStore.copyWith({required CountStore prev, int? count}) {
    this.count = count ?? prev.count;
  }

  CountStore.initial() {
    count = 0;
  }

}