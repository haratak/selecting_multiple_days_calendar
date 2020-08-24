// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'day_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DayLabelTearOff {
  const _$DayLabelTearOff();

// ignore: unused_element
  DayLabelData call({DateTime day, bool isSelected = false}) {
    return DayLabelData(
      day: day,
      isSelected: isSelected,
    );
  }
}

// ignore: unused_element
const $DayLabel = _$DayLabelTearOff();

mixin _$DayLabel {
  DateTime get day;
  bool get isSelected;

  $DayLabelCopyWith<DayLabel> get copyWith;
}

abstract class $DayLabelCopyWith<$Res> {
  factory $DayLabelCopyWith(DayLabel value, $Res Function(DayLabel) then) =
      _$DayLabelCopyWithImpl<$Res>;
  $Res call({DateTime day, bool isSelected});
}

class _$DayLabelCopyWithImpl<$Res> implements $DayLabelCopyWith<$Res> {
  _$DayLabelCopyWithImpl(this._value, this._then);

  final DayLabel _value;
  // ignore: unused_field
  final $Res Function(DayLabel) _then;

  @override
  $Res call({
    Object day = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed ? _value.day : day as DateTime,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

abstract class $DayLabelDataCopyWith<$Res> implements $DayLabelCopyWith<$Res> {
  factory $DayLabelDataCopyWith(
          DayLabelData value, $Res Function(DayLabelData) then) =
      _$DayLabelDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime day, bool isSelected});
}

class _$DayLabelDataCopyWithImpl<$Res> extends _$DayLabelCopyWithImpl<$Res>
    implements $DayLabelDataCopyWith<$Res> {
  _$DayLabelDataCopyWithImpl(
      DayLabelData _value, $Res Function(DayLabelData) _then)
      : super(_value, (v) => _then(v as DayLabelData));

  @override
  DayLabelData get _value => super._value as DayLabelData;

  @override
  $Res call({
    Object day = freezed,
    Object isSelected = freezed,
  }) {
    return _then(DayLabelData(
      day: day == freezed ? _value.day : day as DateTime,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

class _$DayLabelData with DiagnosticableTreeMixin implements DayLabelData {
  const _$DayLabelData({this.day, this.isSelected = false})
      : assert(isSelected != null);

  @override
  final DateTime day;
  @JsonKey(defaultValue: false)
  @override
  final bool isSelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayLabel(day: $day, isSelected: $isSelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayLabel'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('isSelected', isSelected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DayLabelData &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(isSelected);

  @override
  $DayLabelDataCopyWith<DayLabelData> get copyWith =>
      _$DayLabelDataCopyWithImpl<DayLabelData>(this, _$identity);
}

abstract class DayLabelData implements DayLabel {
  const factory DayLabelData({DateTime day, bool isSelected}) = _$DayLabelData;

  @override
  DateTime get day;
  @override
  bool get isSelected;
  @override
  $DayLabelDataCopyWith<DayLabelData> get copyWith;
}
