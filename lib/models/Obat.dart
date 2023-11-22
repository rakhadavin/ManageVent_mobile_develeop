// To parse this JSON data, do
//
//     final obat = obatFromJson(jsonString);

import 'dart:convert';

List<Obat> obatFromJson(String str) =>
    List<Obat>.from(json.decode(str).map((x) => Obat.fromJson(x)));

String obatToJson(List<Obat> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Obat {
  String model;
  int pk;
  Fields fields;

  Obat({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Obat.fromJson(Map<String, dynamic> json) => Obat(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String namaObat;
  int amount;
  int harga;
  String satuanHarga;
  String jenisObat;
  String deskripsi;
  DateTime expired;

  Fields({
    required this.user,
    required this.namaObat,
    required this.amount,
    required this.harga,
    required this.satuanHarga,
    required this.jenisObat,
    required this.deskripsi,
    required this.expired,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        namaObat: json["nama_obat"],
        amount: json["amount"],
        harga: json["harga"],
        satuanHarga: json["satuan_harga"],
        jenisObat: json["jenis_obat"],
        deskripsi: json["deskripsi"],
        expired: DateTime.parse(json["expired"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "nama_obat": namaObat,
        "amount": amount,
        "harga": harga,
        "satuan_harga": satuanHarga,
        "jenis_obat": jenisObat,
        "deskripsi": deskripsi,
        "expired":
            "${expired.year.toString().padLeft(4, '0')}-${expired.month.toString().padLeft(2, '0')}-${expired.day.toString().padLeft(2, '0')}",
      };
}
