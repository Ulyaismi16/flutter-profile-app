import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String nama;
  final String lokasi;
  final String profesi;
  final String email;
  final String nohp;

  const DetailPage({
    super.key,
    required this.nama,
    required this.lokasi,
    required this.profesi,
    required this.email,
    required this.nohp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Profil")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Nama: $nama"),
            Text("Lokasi: $lokasi"),
            Text("Profesi: $profesi"),

            SizedBox(height: 20),

            Text("Email: $email"),
            Text("No HP: $nohp"),
          ],
        ),
      ),
    );
  }
}