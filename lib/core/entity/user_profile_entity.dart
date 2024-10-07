import 'package:droop_down/core/entity/address_entity.dart';
import 'package:droop_down/core/entity/company_entity.dart';

class UserProfileEntity {
  final String name;
  final String surname;
  final String email;
  final AddressEntity addressEntity;
  final String phoneNumber;
  final CompanyEntity companyEntity;

  UserProfileEntity(
      {required this.name,
      required this.surname,
      required this.email,
      required this.addressEntity,
      required this.phoneNumber,
      required this.companyEntity});

  factory UserProfileEntity.fromJson(Map<String, dynamic> json) {
    return UserProfileEntity(
        name: json["name"],
        surname: json["username"],
        email: json["email"],
        addressEntity: AddressEntity.fromJson(json["address"]),
        phoneNumber: json["phone"],
        companyEntity: CompanyEntity.fromJson(json["company"]));
  }
}
// {
// "id": 1,
// "name": "Leanne Graham",
// "username": "Bret",
// "email": "Sincere@april.biz",
// "address": {
// "street": "Kulas Light",
// "suite": "Apt. 556",
// "city": "Gwenborough",
// "zipcode": "92998-3874",
// "geo": {
// "lat": "-37.3159",
// "lng": "81.1496"
// }
// },
// "phone": "1-770-736-8031 x56442",
// "website": "hildegard.org",
// "company": {
// "name": "Romaguera-Crona",
// "catchPhrase": "Multi-layered client-server neural-net",
// "bs": "harness real-time e-markets"
// }
// },
