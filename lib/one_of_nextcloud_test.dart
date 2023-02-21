import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'one_of_nextcloud_test.g.dart';

abstract class SpecialOneOf
    implements Built<SpecialOneOf, SpecialOneOfBuilder> {
  factory SpecialOneOf([final void Function(SpecialOneOfBuilder)? updates]) =
      _$SpecialOneOf;

  const SpecialOneOf._();

  String? get value1;

  String? get value2;

  String? get specialValue;

  static SpecialOneOf fromJsonString(final String data) =>
      serializers.fromJson(serializer, data)!;
  String toJsonString() => serializers.toJson(serializer, this);
  static Serializer<SpecialOneOf> get serializer => SpecialOneOfSerializer();
}

class SpecialOneOfSerializer implements StructuredSerializer<SpecialOneOf> {
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
    final result = SpecialOneOfBuilder();

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
          if (value is List && value.isEmpty) {
            break;
          }
          result.specialValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

@SerializersFor([
  SpecialOneOf,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
