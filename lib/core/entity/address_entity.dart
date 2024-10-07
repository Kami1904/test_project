class AddressEntity {
  final String street;
  final String suite;
  final String zipCode;
  final String lat;
  final String lng;

  AddressEntity({
    required this.street,
    required this.suite,
    required this.zipCode,
    required this.lat,
    required this.lng,
  });

  factory AddressEntity.fromJson(Map<String, dynamic> json) {
    return AddressEntity(
      street: json["street"],
      suite: json["suite"],
      zipCode: json["zipcode"],
      lat: json["geo"]["lat"],
      lng: json["geo"]["lng"],
    );
  }
}
