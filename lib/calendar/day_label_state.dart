import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'dart:ui';

part 'day_label_state.freezed.dart';

@freezed
abstract class DayLabelState with _$DayLabelState {
  const factory DayLabelState({
    bool isSelected,
    Color labelColor,
  }) = _DayLabelState;
}

class DayLabelStateNotifier extends StateNotifier<DayLabelState> with LocatorMixin {
  DayLabelStateNotifier() : super(DayLabelState(isSelected: false, labelColor: Colors.white)) {}
  changeBool() {
    state = state.copyWith(isSelected: true, labelColor: Colors.redAccent);
  }
}
