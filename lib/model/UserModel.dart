import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.userId,
    required this.username,
    required this.password,
    required this.email,
    required this.department,
    required this.commentCertified,
  });

  final int userId;
  final String username;
  final String email;
  final String password;
  final String department;
  final bool commentCertified;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["id"],
        username: json["username"],
        password: json["password"],
        email: json["email"],
        department: json["department"],
        commentCertified: json["commentCertified"],
      );

  Map<String, dynamic> toJson() => {
        "id": userId,
        "name": username,
        "password": password,
        "email": email,
        "department": department,
        "commentCertified": commentCertified,
      };
}

// class Address {
//   Address({
//     required this.street,
//     required this.suite,
//     required this.city,
//     required this.zipcode,
//     required this.geo,
//   });

//   String street;
//   String suite;
//   String city;
//   String zipcode;
//   Geo geo;

//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//         street: json["street"],
//         suite: json["suite"],
//         city: json["city"],
//         zipcode: json["zipcode"],
//         geo: Geo.fromJson(json["geo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "street": street,
//         "suite": suite,
//         "city": city,
//         "zipcode": zipcode,
//         "geo": geo.toJson(),
//       };
// }

// class Geo {
//   Geo({
//     required this.lat,
//     required this.lng,
//   });

//   String lat;
//   String lng;

//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//       );

//   Map<String, dynamic> toJson() => {
//         "lat": lat,
//         "lng": lng,
//       };
// }

// class Company {
//   Company({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });

//   String name;
//   String catchPhrase;
//   String bs;

//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "catchPhrase": catchPhrase,
//         "bs": bs,
//       };
// }
