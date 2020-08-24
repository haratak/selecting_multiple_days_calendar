// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'day_labels_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DayLabelsStateTearOff {
  const _$DayLabelsStateTearOff();

// ignore: unused_element
  DayLabelsStateData call(
      {List<List<DayLabel>> dayLabelLists = const <List<DayLabel>>[],
      int monthNumber = 0}) {
    return DayLabelsStateData(
      dayLabelLists: dayLabelLists,
      monthNumber: monthNumber,
    );
  }
}

// ignore: unused_element
const $DayLabelsState = _$DayLabelsStateTearOff();

mixin _$DayLabelsState {
  List<List<DayLabel>> get dayLabelLists;
  int get monthNumber;

  $DayLabelsStateCopyWith<DayLabelsState> get copyWith;
}

abstract class $DayLabelsStateCopyWith<$Res> {
  factory $DayLabelsStateCopyWith(
          DayLabelsState value, $Res Function(DayLabelsState) then) =
      _$DayLabelsStateCopyWithImpl<$Res>;
  $Res call({List<List<DayLabel>> dayLabelLists, int monthNumber});
}

class _$DayLabelsStateCopyWithImpl<$Res>
    implements $DayLabelsStateCopyWith<$Res> {
  _$DayLabelsStateCopyWithImpl(this._value, this._then);

  final DayLabelsState _value;
  // ignore: unused_field
  final $Res Function(DayLabelsState) _then;

  @override
  $Res call({
    Object dayLabelLists = freezed,
    Object monthNumber = freezed,
  }) {
    return _then(_value.copyWith(
      dayLabelLists: dayLabelLists == freezed
          ? _value.dayLabelLists
          : dayLabelLists as List<List<DayLabel>>,
      monthNumber:
          monthNumber == freezed ? _value.monthNumber : monthNumber as int,
    ));
  }
}

abstract class $DayLabelsStateDataCopyWith<$Res>
    implements $DayLabelsStateCopyWith<$Res> {
  factory $DayLabelsStateDataCopyWith(
          DayLabelsStateData value, $Res Function(DayLabelsStateData) then) =
      _$DayLabelsStateDataCopyWithImpl<$Res>;
  @override
  $Res call({List<List<DayLabel>> dayLabelLists, int monthNumber});
}

class _$DayLabelsStateDataCopyWithImpl<$Res>
    extends _$DayLabelsStateCopyWithImpl<$Res>
    implements $DayLabelsStateDataCopyWith<$Res> {
  _$DayLabelsStateDataCopyWithImpl(
      DayLabelsStateData _value, $Res Function(DayLabelsStateData) _then)
      : super(_value, (v) => _then(v as DayLabelsStateData));

  @override
  DayLabelsStateData get _value => super._value as DayLabelsStateData;

  @override
  $Res call({
    Object dayLabelLists = freezed,
    Object monthNumber = freezed,
  }) {
    return _then(DayLabelsStateData(
      dayLabelLists: dayLabelLists == freezed
          ? _value.dayLabelLists
          : dayLabelLists as List<List<DayLabel>>,
      monthNumber:
          monthNumber == freezed ? _value.monthNumber : monthNumber as int,
    ));
  }
}

class _$DayLabelsStateData
    with DiagnosticableTreeMixin
    implements DayLabelsStateData {
  const _$DayLabelsStateData(
      {this.dayLabelLists = const <List<DayLabel>>[], this.monthNumber = 0})
      : assert(dayLabelLists != null),
        assert(monthNumber != null);

  @JsonKey(defaultValue: const <List<DayLabel>>[])
  @override
  final List<List<DayLabel>> dayLabelLists;
  @JsonKey(defaultValue: 0)
  @override
  final int monthNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayLabelsState(dayLabelLists: $dayLabelLists, monthNumber: $monthNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayLabelsState'))
      ..add(DiagnosticsProperty('dayLabelLists', dayLabelLists))
      ..add(DiagnosticsProperty('monthNumber', monthNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DayLabelsStateData &&
            (identical(other.dayLabelLists, dayLabelLists) ||
                const DeepCollectionEquality()
                    .equals(other.dayLabelLists, dayLabelLists)) &&
            (identical(other.monthNumber, monthNumber) ||
                const DeepCollectionEquality()
                    .equals(other.monthNumber, monthNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dayLabelLists) ^
      const DeepCollectionEquality().hash(monthNumber);

  @override
  $DayLabelsStateDataCopyWith<DayLabelsStateData> get copyWith =>
      _$DayLabelsStateDataCopyWithImpl<DayLabelsStateData>(this, _$identity);
}

abstract class DayLabelsStateData implements DayLabelsState {
  const factory DayLabelsStateData(
      {List<List<DayLabel>> dayLabelLists,
      int monthNumber}) = _$DayLabelsStateData;

  @override
  List<List<DayLabel>> get dayLabelLists;
  @override
  int get monthNumber;
  @override
  $DayLabelsStateDataCopyWith<DayLabelsStateData> get copyWith;
}
