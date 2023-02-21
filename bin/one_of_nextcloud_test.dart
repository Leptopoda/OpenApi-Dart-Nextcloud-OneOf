import 'package:one_of_nextcloud_test/one_of_nextcloud_test.dart';

void main(List<String> arguments) {
  final test = SpecialOneOf(
    (final b) => b
      ..value1 = 'hallo :)'
      ..specialValue = 'Test',
  );

  print(test.toJsonString());

  final deserialized = SpecialOneOf.fromJsonString('{"value1":"hallo :)","specialValue":"Test"}');

  print(deserialized);

  final deserializedNull = SpecialOneOf.fromJsonString('{"value1":"hallo :)","specialValue":[]}');

  print(deserializedNull);
  
  }
