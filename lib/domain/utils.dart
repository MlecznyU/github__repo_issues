enum SortType { created, updated, name, pushed }
enum SortDirection { asc, desc }

class Pair<E, F> {
  final E first;

  final F last;

  Pair(this.first, this.last);
}
