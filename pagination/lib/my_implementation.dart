// https://gist.github.com/iapicca/fb88730d72fe24548c8dc73deded2e66

extension PaginatorX<T> on Iterable<T> {
  Iterable<Iterable<T>> operator /(int length) sync* {
    final j = this.length / length;
    for (var i = 0; i < j; ++i) {
      yield [...this].skip(length * i).take(length);
    }
  }
}