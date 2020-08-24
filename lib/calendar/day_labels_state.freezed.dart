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
      {List<List<DayLabel>> dayLabelLists = const <List<DayLabel>>[]}) {
    return DayLabelsStateData(
      dayLabelLists: dayLabelLists,
    );
  }
}

// ignore: unused_element
const $DayLabelsState = _$DayLabelsStateTearOff();

mixin _$DayLabelsState {
  List<List<DayLabel>> get dayLabelLists;

  $DayLabelsStateCopyWith<DayLabelsState> get copyWith;
}

abstract class $DayLabelsStateCopyWith<$Res> {
  factory $DayLabelsStateCopyWith(
          DayLabelsState value, $Res Function(DayLabelsState) then) =
      _$DayLabelsStateCopyWithImpl<$Res>;
  $Res call({List<List<DayLabel>> dayLabelLists});
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
  }) {
    return _then(_value.copyWith(
      dayLabelLists: dayLabelLists == freezed
          ? _value.dayLabelLists
          : dayLabelLists as List<List<DayLabel>>,
    ));
  }
}

abstract class $DayLabelsStateDataCopyWith<$Res>
    implements $DayLabelsStateCopyWith<$Res> {
  factory $DayLabelsStateDataCopyWith(
          DayLabelsStateData value, $Res Function(DayLabelsStateData) then) =
      _$DayLabelsStateDataCopyWithImpl<$Res>;
  @override
  $Res call({List<List<DayLabel>> dayLabelLists});
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
  }) {
    return _then(DayLabelsStateData(
      dayLabelLists: dayLabelLists == freezed
          ? _value.dayLabelLists
          : dayLabelLists as List<List<DayLabel>>,
    ));
  }
}

class _$DayLabelsStateData
    with DiagnosticableTreeMixin
    implements DayLabelsStateData {
  const _$DayLabelsStateData({this.dayLabelLists = const <List<DayLabel>>[]})
      : assert(dayLabelLists != null);

  @JsonKey(defaultValue: const <List<DayLabel>>[])
  @override
  final List<List<DayLabel>> dayLabelLists;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayLabelsState(dayLabelLists: $dayLabelLists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayLabelsState'))
      ..add(DiagnosticsProperty('dayLabelLists', dayLabelLists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DayLabelsStateData &&
            (identical(other.dayLabelLists, dayLabelLists) ||
                const DeepCollectionEquality()
                    .equals(other.dayLabelLists, dayLabelLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dayLabelLists);

  @override
  $DayLabelsStateDataCopyWith<DayLabelsStateData> get copyWith =>
      _$DayLabelsStateDataCopyWithImpl<DayLabelsStateData>(this, _$identity);
}

abstract class DayLabelsStateData implements DayLabelsState {
  const factory DayLabelsStateData({List<List<DayLabel>> dayLabelLists}) =
      _$DayLabelsStateData;

  @override
  List<List<DayLabel>> get dayLabelLists;
  @override
  $DayLabelsStateDataCopyWith<DayLabelsStateData> get copyWith;
}
