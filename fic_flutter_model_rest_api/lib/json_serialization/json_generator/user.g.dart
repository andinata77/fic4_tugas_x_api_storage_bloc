part of 'user.dart';

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['name'] as String,
      json['email'] as String,
      json['registration_date_millis'] as int,
    );
Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'registration_date_millis': instance.registrationDateMillis,
    };
