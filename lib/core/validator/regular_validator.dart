import 'package:artivatic_test/core/constants/strings.dart';

String? regularValidator(String value) {
  if (value.isEmpty) {
    return Strings.fieldCanNotBeEmpty;
  }
  return null;
}
