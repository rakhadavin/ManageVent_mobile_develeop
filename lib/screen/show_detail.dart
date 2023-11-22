import 'package:flutter/material.dart';

class DetailObat extends StatelessWidget {
  String namaObat;
  int amount;
  int harga;
  String satuanHarga;
  String jenisObat;
  String deskripsi;
  DateTime expired;

  DetailObat(this.namaObat, this.amount, this.harga, this.satuanHarga,
      this.jenisObat, this.deskripsi, this.expired,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Obat"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(namaObat),
            Text(harga.toString()),
            Text(amount.toString()),
            Text(satuanHarga),
            Text(jenisObat),
            Text(deskripsi),
            Text(expired.toString()),
          ],
        ),
      ),
    );
  }
}
