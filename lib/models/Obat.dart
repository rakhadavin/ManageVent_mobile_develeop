// To parse this JSON data, do
//
//     final obat = obatFromJson(jsonString);

import 'dart:convert';

Obat obatFromJson(String str) => Obat.fromJson(json.decode(str));

String obatToJson(Obat data) => json.encode(data.toJson());

class Obat {
  String greeting;
  List<String> instructions;

  Obat({
    required this.greeting,
    required this.instructions,
  });

  factory Obat.fromJson(Map<String, dynamic> json) => Obat(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
      };
}
