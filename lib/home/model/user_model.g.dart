// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      customerID: json['id'] as int?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      username: json['username'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.customerID,
      'email': instance.email,
      'username': instance.username,
      'name': instance.name,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.address,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String?,
      suite: json['suite'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      name: json['name'] as String?,
      catchPhrase: json['catchPhrase'] as String?,
      bs: json['bs'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
