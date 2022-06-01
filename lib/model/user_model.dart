
// To parse this JSON data, do
//
//     final userdetails = userdetailsFromJson(jsonString);

import 'dart:convert';

Userdetails userdetailsFromJson(String str) => Userdetails.fromJson(json.decode(str));

String userdetailsToJson(Userdetails data) => json.encode(data.toJson());

class Userdetails {
    Userdetails({
        required this.name,
        required this.image,
        required this.description,
        required this.time,
    });

    String name;
    String image;
    String description;
    String time;

    factory Userdetails.fromJson(Map<String, dynamic> json) => Userdetails(
        name: json["name"],
        image: json["image"],
        description: json["description"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "description":description,
        "time": time,
    };
}