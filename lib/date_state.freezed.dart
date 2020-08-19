// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'date_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DateState _$DateStateFromJson(Map<String, dynamic> json) {
  return _DateState.fromJson(json);
}

class _$DateStateTearOff {
  const _$DateStateTearOff();

// ignore: unused_element
  _DateState call({int count = 0, int pageNumber = 13}) {
    return _DateState(
      count: count,
      pageNumber: pageNumber,
    );
  }
}

// ignore: unused_element
const $DateState = _$DateStateTearOff();

mixin _$DateState {
  int get count;
  int get pageNumber;

  Map<String, dynamic> toJson();
  $DateStateCopyWith<DateState> get copyWith;
}

abstract class $DateStateCopyWith<$Res> {
  factory $DateStateCopyWith(DateState value, $Res Function(DateState) then) =
      _$DateStateCopyWithImpl<$Res>;
  $Res call({int count, int pageNumber});
}

class _$DateStateCopyWithImpl<$Res> implements $DateStateCopyWith<$Res> {
  _$DateStateCopyWithImpl(this._value, this._then);

  final DateState _value;
  // ignore: unused_field
  final $Res Function(DateState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object pageNumber = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      pageNumber: pageNumber == freezed ? _value.pageNumber : pageNumber as int,
    ));
  }
}

abstract class _$DateStateCopyWith<$Res> implements $DateStateCopyWith<$Res> {
  factory _$DateStateCopyWith(
          _DateState value, $Res Function(_DateState) then) =
      __$DateStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, int pageNumber});
}

class __$DateStateCopyWithImpl<$Res> extends _$DateStateCopyWithImpl<$Res>
    implements _$DateStateCopyWith<$Res> {
  __$DateStateCopyWithImpl(_DateState _value, $Res Function(_DateState) _then)
      : super(_value, (v) => _then(v as _DateState));

  @override
  _DateState get _value => super._value as _DateState;

  @override
  $Res call({
    Object count = freezed,
    Object pageNumber = freezed,
  }) {
    return _then(_DateState(
      count: count == freezed ? _value.count : count as int,
      pageNumber: pageNumber == freezed ? _value.pageNumber : pageNumber as int,
    ));
  }
}

@JsonSerializable()
class _$_DateState with DiagnosticableTreeMixin implements _DateState {
  const _$_DateState({this.count = 0, this.pageNumber = 13})
      : assert(count != null),
        assert(pageNumber != null);

  factory _$_DateState.fromJson(Map<String, dynamic> json) =>
      _$_$_DateStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: 13)
  @override
  final int pageNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DateState(count: $count, pageNumber: $pageNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DateState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('pageNumber', pageNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(pageNumber);

  @override
  _$DateStateCopyWith<_DateState> get copyWith =>
      __$DateStateCopyWithImpl<_DateState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DateStateToJson(this);
  }
}

abstract class _DateState implements DateState {
  const factory _DateState({int count, int pageNumber}) = _$_DateState;

  factory _DateState.fromJson(Map<String, dynamic> json) =
      _$_DateState.fromJson;

  @override
  int get count;
  @override
  int get pageNumber;
  @override
  _$DateStateCopyWith<_DateState> get copyWith;
}
