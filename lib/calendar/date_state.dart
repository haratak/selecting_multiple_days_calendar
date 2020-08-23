import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'date_state.freezed.dart';
part 'date_state.g.dart';

@freezed
abstract class DateState with _$DateState {
  const factory DateState({
    @Default(0) int count,
    @Default(0) int pageNumber,
  }) = _DateState;
  factory DateState.fromJson(Map<String, dynamic> json) => _$DateStateFromJson(json);
}

class DateStateNotifier extends StateNotifier<DateState> {
  DateStateNotifier() : super(const DateState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
  decrement() => state = state.copyWith(count: state.count - 1);
  incrementPageNumber() => state = state.copyWith(pageNumber: state.pageNumber + 1);
  decrementPageNumber() => state = state.copyWith(pageNumber: state.pageNumber - 1);
}
