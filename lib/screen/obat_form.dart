// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:managevent/widgets/left_drawer.dart';
import 'package:managevent/screen/show_prod.dart';

class obatForm extends StatefulWidget {
  // static String _namaObat = "";
  // static String _deskripsi = "";
  // static int _harga = 0;
  // static String _jenisObat = "";
  const obatForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return obatFormField();
  }

  obatFormField createstate() => obatFormField();
}

class obatFormField extends State<obatForm> {
  static String _namaObat = "";
  static int _harga = 0;
  static String _deskripsi = "";

  List listJenisObat = [
    "Obat Orang Tua",
    "Obat Anak (0-17 tahun)",
    "Generic",
    "Racikan",
    "Obat Hati",
    "Obat Galau",
  ];
  static String _jenisSatuan = "";
  List listJenisSatuan = [
    "Sachete",
    "Kapsul",
    "Tablet",
    "Lusin",
    "Package (isi 10)",
    "Strip",
  ];
  final _formKey = GlobalKey<FormState>();

  Widget _nameField() {
    return TextFormField(
      decoration: InputDecoration(
        label: const Text("Nama Obat"),
        hintText: "Masukan nama obat",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),

        // ignore: body_might_complete_normally_nullable
      ),
      onChanged: (String? value) {
        setState(() {
          _namaObat = value!;
        });
      },
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Nama obat tidak boleh kosong!";
        }
        return null;
      },
    );
  }

  Widget _deskripsiField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Deskripsi (Dosis)",
        hintText: "Masukan deskripsi atau Dosis",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      onChanged: (String? deskripsi) {
        setState(() {
          _deskripsi = deskripsi!;
        });
      },
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Deskripsi tidak boleh kosong!";
        }
        return null;
      },
      // ignore: body_might_complete_normally_nullable
    );
  }

  Widget _hargaField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Harga",
        hintText: "Masukan harga obat",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],

      onChanged: (String? harga) {
        setState(() {
          try {
            _harga = int.parse(harga!);
          } catch (e) {
            if (e is FormatException && harga != "") {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Invalid format for integer'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          }
        });
      },
      validator: (String? harga) {
        if (harga == null || harga.isEmpty) {
          return "Nama obat tidak boleh kosong!";
        }
        if (int.tryParse(harga) == null) {
          _harga = 0;
          return "Harga harus berupa angka";
        }
        return null;
      },
      // ignore: body_might_complete_normally_nullable
    );
  }

  // Widget _satuanField() {
  //   return DropdownButton(
  //       hint: Text("Satuan : "),
  //       dropdownColor: Colors.grey[400],
  //       icon: Icon(Icons.arrow_drop_down_rounded),
  //       iconSize: 20,
  //       isExpanded: true,
  //       style: TextStyle(color: Colors.black, fontSize: 15),
  //       value: _jenisSatuan,
  //       onChanged: (newValue) {
  //         if (newValue != null) {
  //           setState(() {
  //             _jenisSatuan = newValue.toString();
  //           });
  //         }
  //       },
  //       items: listJenisSatuan.map((satuan) {
  //         return DropdownMenuItem(value: satuan, child: Text("satuan"));
  //       }).toList());
  // }

  // Widget _jenisObatField() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //       label: const Text("Nama Obat"),
  //       hintText: "Masukan nama obat",
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5.0),
  //       ),

  //       // ignore: body_might_complete_normally_nullable
  //     ),
  //     onChanged: (String? value) {
  //       setState(() {
  //         _namaObat = value!;
  //       });
  //     },
  //     validator: (String? value) {
  //       if (value == null || value.isEmpty) {
  //         return "Nama obat tidak boleh kosong!";
  //       }
  //       return null;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Identitas Obat"),
        backgroundColor: const Color.fromARGB(255, 63, 150, 31),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 10),
                    child: _nameField(),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 0, bottom: 10),
                  //   child: _satuanField(),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 10),
                    child: _hargaField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 10),
                    child: _deskripsiField(),
                  ),
                  const SizedBox(height: 100),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      onSavePressed(context, 'Nama Item');
                    },
                    child: const Text(
                      'Save Changes',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void onSavePressed(BuildContext context, String s) {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Produk berhasil tersimpan'),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: {$_namaObat}'),
                  Text('Harga: {$_harga}'),
                  Text('Deskripsi: {$_deskripsi}'),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  // final res = await Navigator.pushNamed(
                  //   context,
                  //   "/lib/screen/show_prod.dart",
                  //   arguments: {'nama': _namaObat, 'harga': _harga},
                  // );
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => showItem(
                                nama: _namaObat,
                                harga: _harga,
                                deskripsi: _deskripsi,
                              ))

                      // context,
                      // await MaterialPageRoute(
                      //   builder: (context) => MyHomePage(),
                      // )
                      );
                },
              ),
            ],
          );
        },
      );
      _formKey.currentState!.reset();
    }
  }
}
