import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class User extends Equatable {
  @JsonKey(name: 'id')
  final int? customerID;
  final String? email;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'phone')
  final String? phone;
  final String? website;
   final Address? address;
  const User( {
    this.customerID,this.address,
    this.email,
    this.username,
    this.name,
    this.phone,
    this.website,
  });

  @override
  List<Object> get props => [];
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

//  User Address

@JsonSerializable()
class Address extends Equatable {
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'suite')
  final String? suite;
  final String? city;
  const Address({
    this.street,
    this.suite,
    this.city,
  });

  @override
  List<Object> get props => [];
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

//  Company Address

@JsonSerializable()
class Company extends Equatable {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'catchPhrase')
  final String? catchPhrase;
  final String? bs;
  const Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  @override
  List<Object> get props => [];
  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
