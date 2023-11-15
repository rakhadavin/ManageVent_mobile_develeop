import 'package:flutter/material.dart';
import 'package:managevent/widgets/left_drawer.dart';

class showItem extends StatefulWidget {
  final nama;
  final harga;
  final deskripsi;

  const showItem(
      {super.key,
      required this.nama,
      required this.harga,
      required this.deskripsi});

  @override
  State<StatefulWidget> createState() {
    return ShowObat();
  }

  ShowObat createstate() => ShowObat();
}

class ShowObat extends State<showItem> {
  String nama = "";
  int harga = 0;
  String deskripsi = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Obat"),
        backgroundColor: Color.fromARGB(255, 63, 150, 31),
        foregroundColor: Colors.white,
      ),
      endDrawer: LeftDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: Center(child: Text("$nama")),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: Center(child: Text("$harga")),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: Center(child: Text("$deskripsi")),
          ),
        ],
      ),
    );
  }
}
