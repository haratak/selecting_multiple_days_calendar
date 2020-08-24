import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/entity/day_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_date_multiple_days/entity/month.dart';

part 'day_labels_state.freezed.dart';

@freezed
abstract class DayLabelsState with _$DayLabelsState {
  const factory DayLabelsState({
    @Default(<List<DayLabel>>[]) List<List<DayLabel>> dayLabelLists,
    @Default(0) int monthNumber,
  }) = DayLabelsStateData;
}

class DayLabelsController extends StateNotifier<DayLabelsState> with LocatorMixin {
  DayLabelsController() : super(const DayLabelsState());

  @override
  void initState() {
    List<DateTime> dateList = List.generate(10, (i) => DateTime(DateTime.now().year, DateTime.now().month + i, 1));
    List<Month> monthList = dateList.map((DateTime date) {
      int monthLastNumber = DateTime(date.year, date.month + 1, 1).add(Duration(days: -1)).day;
      return Month(date, monthLastNumber);
    }).toList();

    List<List<DayLabel>> list = monthList.map((Month month) {
      return List.generate(month.monthLastDay,
          (i) => DayLabel(date: DateTime(month.month.year, month.month.month, i + 1), isSelected: false));
    }).toList();
    state = DayLabelsState(dayLabelLists: list);
  }

  void changeBool(DayLabel inputDayLabel) {
    final currentState = state;
    if (currentState is DayLabelsStateData) {
      final dayLabelLists = currentState.dayLabelLists.map((dayLabelList) {
        return dayLabelList.map((dayLabel) {
          if (dayLabel == inputDayLabel) {
            return dayLabel.copyWith(
              isSelected: !dayLabel.isSelected,
            );
          }
          return dayLabel;
        }).toList();
      }).toList();

      state = DayLabelsState(
        dayLabelLists: dayLabelLists,
      );
    }
  }

  void changeMonthNumber(int pageNumber) => state = state.copyWith(monthNumber: pageNumber);
}
