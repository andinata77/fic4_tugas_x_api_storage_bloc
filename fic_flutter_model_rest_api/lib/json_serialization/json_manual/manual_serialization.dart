import 'dart:convert';

void main(List<String> arg) {
  const String jsonString = """
{
  "name": "Andi Nata",
  "email": "andinata1991@gmail.com"
}
""";
  Map<String, dynamic> user = jsonDecode(jsonString);

  print('Halo, ${user['name']}!]');
  print('Email verification link: ${user['email']}');
}
