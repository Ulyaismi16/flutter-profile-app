import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {

  final Function(String, String, String, String, String) onSubmit;

  const FormPage({
    super.key,
    required this.onSubmit,
  });

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final nama = TextEditingController();
  final lokasi = TextEditingController();
  final profesi = TextEditingController();
  final email = TextEditingController();
  final nohp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Input Profil")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: nama,
              decoration: InputDecoration(labelText: "Nama Lengkap"),
            ),

            TextField(
              controller: lokasi,
              decoration: InputDecoration(labelText: "Lokasi"),
            ),

            TextField(
              controller: profesi,
              decoration: InputDecoration(labelText: "Profesi"),
            ),

            TextField(
              controller: email,
              decoration: InputDecoration(labelText: "Email"),
            ),

            TextField(
              controller: nohp,
              decoration: InputDecoration(labelText: "No HP"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                widget.onSubmit(
                  nama.text,
                  lokasi.text,
                  profesi.text,
                  email.text,
                  nohp.text,
                );

                Navigator.pop(context); 
              },
              child: Text("Simpan Data"),
            ),
          ],
        ),
      ),
    );
  }
}