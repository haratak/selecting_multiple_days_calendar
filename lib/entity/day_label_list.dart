import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/entity/day_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_label_list.freezed.dart';

@freezed
abstract class DayLabelList with _$DayLabelList {
  const factory DayLabelList({
    @Default([]) List<DayLabel> dayLabelList,
  }) = _DayLabelList;
}
