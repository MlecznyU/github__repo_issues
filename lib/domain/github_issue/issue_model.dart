import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_model.freezed.dart';

@freezed
class IssueModel with _$IssueModel {
  const factory IssueModel({
    required int issueNumber,
    required String issueTitle,
    required String author,
    required bool open,
    required DateTime createdAt,
    required DateTime? closedAt,
  }) = _IssueModel;
}
