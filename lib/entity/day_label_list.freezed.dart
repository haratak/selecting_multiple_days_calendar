// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'day_label_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DayLabelListTearOff {
  const _$DayLabelListTearOff();

// ignore: unused_element
  _DayLabelList call({List<DayLabel> dayLabelList = const []}) {
    return _DayLabelList(
      dayLabelList: dayLabelList,
    );
  }
}

// ignore: unused_element
const $DayLabelList = _$DayLabelListTearOff();

mixin _$DayLabelList {
  List<DayLabel> get dayLabelList;

  $DayLabelListCopyWith<DayLabelList> get copyWith;
}

abstract class $DayLabelListCopyWith<$Res> {
  factory $DayLabelListCopyWith(
          DayLabelList value, $Res Function(DayLabelList) then) =
      _$DayLabelListCopyWithImpl<$Res>;
  $Res call({List<DayLabel> dayLabelList});
}

class _$DayLabelListCopyWithImpl<$Res> implements $DayLabelListCopyWith<$Res> {
  _$DayLabelListCopyWithImpl(this._value, this._then);

  final DayLabelList _value;
  // ignore: unused_field
  final $Res Function(DayLabelList) _then;

  @override
  $Res call({
    Object dayLabelList = freezed,
  }) {
    return _then(_value.copyWith(
      dayLabelList: dayLabelList == freezed
          ? _value.dayLabelList
          : dayLabelList as List<DayLabel>,
    ));
  }
}

abstract class _$DayLabelListCopyWith<$Res>
    implements $DayLabelListCopyWith<$Res> {
  factory _$DayLabelListCopyWith(
          _DayLabelList value, $Res Function(_DayLabelList) then) =
      __$DayLabelListCopyWithImpl<$Res>;
  @override
  $Res call({List<DayLabel> dayLabelList});
}

class __$DayLabelListCopyWithImpl<$Res> extends _$DayLabelListCopyWithImpl<$Res>
    implements _$DayLabelListCopyWith<$Res> {
  __$DayLabelListCopyWithImpl(
      _DayLabelList _value, $Res Function(_DayLabelList) _then)
      : super(_value, (v) => _then(v as _DayLabelList));

  @override
  _DayLabelList get _value => super._value as _DayLabelList;

  @override
  $Res call({
    Object dayLabelList = freezed,
  }) {
    return _then(_DayLabelList(
      dayLabelList: dayLabelList == freezed
          ? _value.dayLabelList
          : dayLabelList as List<DayLabel>,
    ));
  }
}

class _$_DayLabelList with DiagnosticableTreeMixin implements _DayLabelList {
  const _$_DayLabelList({this.dayLabelList = const []})
      : assert(dayLabelList != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<DayLabel> dayLabelList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DayLabelList(dayLabelList: $dayLabelList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DayLabelList'))
      ..add(DiagnosticsProperty('dayLabelList', dayLabelList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DayLabelList &&
            (identical(other.dayLabelList, dayLabelList) ||
                const DeepCollectionEquality()
                    .equals(other.dayLabelList, dayLabelList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dayLabelList);

  @override
  _$DayLabelListCopyWith<_DayLabelList> get copyWith =>
      __$DayLabelListCopyWithImpl<_DayLabelList>(this, _$identity);
}

abstract class _DayLabelList implements DayLabelList {
  const factory _DayLabelList({List<DayLabel> dayLabelList}) = _$_DayLabelList;

  @override
  List<DayLabel> get dayLabelList;
  @override
  _$DayLabelListCopyWith<_DayLabelList> get copyWith;
}
