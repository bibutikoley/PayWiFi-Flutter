import 'dart:math';

//generate a secure alpha numeric string with 64 characters
String generateRandomString(int length) {
  var rand = Random();
  var codeUnits = List.generate(length, (index) {
    return rand.nextInt(33) + 89;
  });
  return String.fromCharCodes(codeUnits);
}