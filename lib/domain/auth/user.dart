import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:productmate/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    required UniqueId userId,
  }) = _UserData;
}
