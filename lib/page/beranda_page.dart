import 'package:flutter/material.dart';
import 'form_page.dart';

class BerandaPage extends StatelessWidget {

  final Function(String, String, String, String, String) onSubmit;

  const BerandaPage({
    super.key,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tugas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Text("Submit"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: Text("Delete"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Dialog"),
                    content: Text("Ini AlertDialog"),
                  ),
                );
              },
              child: Text("Show Dialog"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Konfirmasi"),
                    content: Text(
                        "Apakah kamu yakin ingin masuk ke halaman Informasi Pribadi?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Batal"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FormPage(
                                onSubmit: onSubmit,
                              ),
                            ),
                          );
                        },
                        child: Text("Yakin"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Isi Informasi Pribadi"),
            ),
          ],
        ),
      ),
    );
  }
}