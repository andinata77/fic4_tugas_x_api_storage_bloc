import 'dart:convert';

import 'user.dart';

void main(List<String> args) {
  const String jsonString = """
{
  "name": "Andi Nata",
  "email": "andinata1991@gmail.com",
  "registration_date_millis": 1234567890
}
""";
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  print('Halo, ${user.name}!');
  print('Email verification link: ${user.email}');

  String json = jsonEncode(user);

  print('String json: $json');
}
