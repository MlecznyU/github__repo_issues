import 'package:tech_challenge_flutter/domain/utils.dart';

extension SortTypeMapper on SortType {
  String toQueryPar() {
    switch (this) {
      case SortType.created:
        return 'created';
      case SortType.updated:
        return 'updated';
      case SortType.name:
        return 'full_name';
      case SortType.pushed:
        return 'pushed';
    }
  }
}

extension SortDirectionMapper on SortDirection {
  String toQueryPar() {
    switch (this) {
      case SortDirection.asc:
        return 'asc';
      case SortDirection.desc:
        return 'desc';
    }
  }
}
