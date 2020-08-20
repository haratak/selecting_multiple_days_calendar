// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'day_label_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DayLabelStateTearOff {
  const _$DayLabelStateTearOff();

// ignore: unused_element
  _DayLabelState call({bool isSelected, Color labelColor}) {
    return _DayLabelState(
      isSelected: isSelected,
      labelColor: labelColor,
    );
  }
}

// ignore: unused_element
const $DayLabelState = _$DayLabelStateTearOff();

mixin _$DayLabelState {
  bool get isSelected;
  Color get labelColor;

  $DayLabelStateCopyWith<DayLabelState> get copyWith;
}

abstract class $DayLabelStateCopyWith<$Res> {
  factory $DayLabelStateCopyWith(
          DayLabelState value, $Res Function(DayLabelState) then) =
      _$DayLabelStateCopyWithImpl<$Res>;
  $Res call({bool isSelected, Color labelColor});
}

class _$DayLabelStateCopyWithImpl<$Res>
    implements $DayLabelStateCopyWith<$Res> {
  _$DayLabelStateCopyWithImpl(this._value, this._then);

  final DayLabelState _value;
  // ignore: unused_field
  final $Res Function(DayLabelState) _then;

  @override
  $Res call({
    Object isSelected = freezed,
    Object labelColor = freezed,
  }) {
    return _then(_value.copyWith(
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
      labelColor:
          labelColor == freezed ? _value.labelColor : labelColor as Color,
    ));
  }
}

abstract class _$DayLabelStateCopyWith<$Res>
    implements $DayLabelStateCopyWith<$Res> {
  factory _$DayLabelStateCopyWith(
          _DayLabelState value, $Res Function(_DayLabelState) then) =
      __$DayLabelStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSelected, Color labelColor});
}

class __$DayLabelStateCopyWithImpl<$Res>
    extends _$DayLabelStateCopyWithImpl<$Res>
    implements _$DayLabelStateCopyWith<$Res> {
  __$DayLabelStateCopyWithImpl(
      _DayLabelState _value, $Res Function(_DayLabelState) _then)
      : super(_value, (v) => _then(v as _DayLabelState));

  @override
  _DayLabelState get _value => super._value as _DayLabelState;

  @override
  $Res call({
    Object isSelected = freezed,
    Object labelColor = freezed,
  }) {
    return _then(_DayLabelState(
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
      labelColor:
          labelColor == freezed ? _value.labelColor : labelColor as Color,
    ));
  }
}

class _$_DayLabelState with DiagnosticableTreeMixin implements _DayLabelState {
  const _$_DayLabelState({this.isSelected, this.labelColor});

  @override
  final bool isSelected;
  @override
  final Color labelColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayLabelState(isSelected: $isSelected, labelColor: $labelColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayLabelState'))
      ..add(DiagnosticsProperty('isSelected', isSelected))
      ..add(DiagnosticsProperty('labelColor', labelColor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DayLabelState &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)) &&
            (identical(other.labelColor, labelColor) ||
                const DeepCollectionEquality()
                    .equals(other.labelColor, labelColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSelected) ^
      const DeepCollectionEquality().hash(labelColor);

  @override
  _$DayLabelStateCopyWith<_DayLabelState> get copyWith =>
      __$DayLabelStateCopyWithImpl<_DayLabelState>(this, _$identity);
}

abstract class _DayLabelState implements DayLabelState {
  const factory _DayLabelState({bool isSelected, Color labelColor}) =
      _$_DayLabelState;

  @override
  bool get isSelected;
  @override
  Color get labelColor;
  @override
  _$DayLabelStateCopyWith<_DayLabelState> get copyWith;
}
