// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_of_nextcloud_test.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (new Serializers().toBuilder()..add(SpecialOneOf.serializer)).build();
Serializer<SpecialOneOf> _$specialOneOfSerializer =
    new _$SpecialOneOfSerializer();

class _$SpecialOneOfSerializer implements StructuredSerializer<SpecialOneOf> {
  @override
  final Iterable<Type> types = const [SpecialOneOf, _$SpecialOneOf];
  @override
  final String wireName = 'SpecialOneOf';

  @override
  Iterable<Object?> serialize(Serializers serializers, SpecialOneOf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.value1;
    if (value != null) {
      result
        ..add('value1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value2;
    if (value != null) {
      result
        ..add('value2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specialValue;
    if (value != null) {
      result
        ..add('specialValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SpecialOneOf deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpecialOneOfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'value1':
          result.value1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value2':
          result.value2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specialValue':
          result.specialValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SpecialOneOf extends SpecialOneOf {
  @override
  final String? value1;
  @override
  final String? value2;
  @override
  final String? specialValue;

  factory _$SpecialOneOf([void Function(SpecialOneOfBuilder)? updates]) =>
      (new SpecialOneOfBuilder()..update(updates))._build();

  _$SpecialOneOf._({this.value1, this.value2, this.specialValue}) : super._();

  @override
  SpecialOneOf rebuild(void Function(SpecialOneOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialOneOfBuilder toBuilder() => new SpecialOneOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialOneOf &&
        value1 == other.value1 &&
        value2 == other.value2 &&
        specialValue == other.specialValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value1.hashCode);
    _$hash = $jc(_$hash, value2.hashCode);
    _$hash = $jc(_$hash, specialValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialOneOf')
          ..add('value1', value1)
          ..add('value2', value2)
          ..add('specialValue', specialValue))
        .toString();
  }
}

class SpecialOneOfBuilder
    implements Builder<SpecialOneOf, SpecialOneOfBuilder> {
  _$SpecialOneOf? _$v;

  String? _value1;
  String? get value1 => _$this._value1;
  set value1(String? value1) => _$this._value1 = value1;

  String? _value2;
  String? get value2 => _$this._value2;
  set value2(String? value2) => _$this._value2 = value2;

  String? _specialValue;
  String? get specialValue => _$this._specialValue;
  set specialValue(String? specialValue) => _$this._specialValue = specialValue;

  SpecialOneOfBuilder();

  SpecialOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value1 = $v.value1;
      _value2 = $v.value2;
      _specialValue = $v.specialValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialOneOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpecialOneOf;
  }

  @override
  void update(void Function(SpecialOneOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialOneOf build() => _build();

  _$SpecialOneOf _build() {
    final _$result = _$v ??
        new _$SpecialOneOf._(
            value1: value1, value2: value2, specialValue: specialValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
