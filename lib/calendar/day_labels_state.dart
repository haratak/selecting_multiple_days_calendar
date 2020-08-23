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
    @Default(<DayLabel>[]) List<DayLabel> dayLabels,
  }) = DayLabelsStateData;
}

class DayLabelsController extends StateNotifier<DayLabelsState> with LocatorMixin {
  DayLabelsController() : super(const DayLabelsState());

  @override
  void initState() {
    final thisMonth = DateTime.now();
    Month month = Month(DateTime(thisMonth.year, thisMonth.month, 1),
        DateTime(thisMonth.year, thisMonth.month + 1, 1).add(Duration(days: -1)).day);

    List<DayLabel> list = List.generate(month.monthLastDay,
        (i) => DayLabel(day: DateTime(month.month.year, month.month.month, i + 1), isSelected: false));

    state = DayLabelsState(dayLabels: list);
  }

  @override
  void update(Locator watch) {
    super.update(watch);

//    state = state.copyWith(dayLabels:watch<DayLabelsState>);
  }

  void changeBool(DayLabel dayLabel) {
    final currentState = state;
    if (currentState is DayLabelsStateData) {
      print(currentState.dayLabels);
      final dayLabels = currentState.dayLabels.map((e) {
        if (e == dayLabel) {
          print(e);
          return e.copyWith(
            isSelected: !e.isSelected,
          );
        }
        return e;
      }).toList();
//      print(dayLabels);
//      print(state);
      state = DayLabelsState(
        dayLabels: dayLabels,
      );
      print(state);
      print(dayLabels);
    }
  }
}

//class DayLabelListState extends StateNotifier<DayLabelList> {
//  DayLabelListState() : super(const DayLabelList());
//
////  List<DayLabel> list = <DayLabel>[];
//  List<GestureDetector> list = <GestureDetector>[];
//
//  void createDayLabel(Month month) {
//    list = List.generate(month.monthLastDay, (int index) {
//      DayLabel dayLabel = DayLabel(day: DateTime(month.month.year, month.month.month, index + 1), isSelected: false);
//
//      return _dayWidget(dayLabel);
//    });
////            DayLabel(day: DateTime(month.month.year, month.month.month, i + 1), isSelected: false));
////    state = state.copyWith(dayLabelList: [...list]);
//  }
//
//  GestureDetector _dayWidget(DayLabel dayLabel) {
//    return GestureDetector(
//      child: Padding(
//        padding: const EdgeInsets.all(3.0),
//        child: CircleAvatar(
//          radius: 30,
//          backgroundColor: dayLabel.isSelected ? Colors.redAccent : Colors.white60,
//          child: Container(
//            alignment: Alignment.center,
//            height: 45,
//            child: Text(
//              dayLabel.day.day.toString(),
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                  fontSize: 20.0,
//                  fontWeight: dayLabel.isSelected ? FontWeight.bold : FontWeight.normal,
//                  color: Colors.black),
//            ),
//          ),
//        ),
//      ),
//      onTap: () {
//        print(dayLabel);
////        if (dayLabel.isSelected) {
////          print(dayLabel.isSelected);
////          dayLabel.isSelected = false;
////        } else {
////          dayLabel.isSelected = true;
////        }
////        print(dayLabel.isSelected);
//      },
//    );
//  }
//}
//flutter: [DayLabel(day: 2020-08-01 00:00:00.000, isSelected: false), DayLabel(day: 2020-08-02 00:00:00.000, isSelected: false), DayLabel(day: 2020-08-03 00:00:00.000, isSelected: false)]
//flutter: DayLabel(day: 2020-08-01 00:00:00.000, isSelected: false)
//flutter: DayLabelsState(dayLabels: [DayLabel(day: 2020-08-01 00:00:00.000, isSelected: true), null, null])
//flutter: [DayLabel(day: 2020-08-01 00:00:00.000, isSelected: true), null, null]
