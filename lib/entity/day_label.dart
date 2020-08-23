import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_label.freezed.dart';

@freezed
abstract class DayLabel with _$DayLabel {
  const factory DayLabel({
    DateTime day,
    @Default(false) bool isSelected,
  }) = DayLabelData;
}

//class DayLabel {
//  DateTime day;
//  bool isSelected;
//
//  DayLabel({this.day, this.isSelected});
//}
