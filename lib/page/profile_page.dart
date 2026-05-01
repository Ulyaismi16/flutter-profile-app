import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String nama;
  final String lokasi;
  final String profesi;
  final String email;
  final String nohp;

  const ProfilePage({
    super.key,
    required this.nama,
    required this.lokasi,
    required this.profesi,
    required this.email,
    required this.nohp,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool showDetail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [

        
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/vector-1776056613747-f61e2eec6972",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment(0, 2.5),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/vector-1776907374655-777a071053db",
                ),
              ),
            ),

            SizedBox(height: 60),

            
            Text(
              widget.nama.isEmpty ? "Miracle" : widget.nama,
              style: TextStyle(fontSize: 22),
            ),

            SizedBox(height: 5),

            Text(widget.lokasi.isEmpty ? "greedy" : widget.lokasi),

            SizedBox(height: 5),

            Text(
              widget.profesi.isEmpty
                  ? "Main problem"
                  : widget.profesi,
              style: TextStyle(color: Colors.blue),
            ),

            SizedBox(height: 20),

     
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Project",
                        style: TextStyle(color: Colors.blue)),
                    Text("16"),
                  ],
                ),
                Column(
                  children: [
                    Text("Followers",
                        style: TextStyle(color: Colors.blue)),
                    Text("2308"),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

           
            GestureDetector(
              onTap: () {
                setState(() {
                  showDetail = !showDetail;
                });
              },
              child: Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    showDetail
                        ? "Sembunyikan Detail"
                        : "Lihat Detail",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            
            if (showDetail) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Informasi Pribadi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Divider(thickness: 1),

             
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Nama Lengkap"),
                subtitle: Text(widget.nama),
              ),

              ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Lokasi"),
                subtitle: Text(widget.lokasi),
              ),

              ListTile(
                leading: Icon(Icons.work),
                title: Text("Profesi"),
                subtitle: Text(widget.profesi),
              ),

              ListTile(
                leading: Icon(Icons.email),
                title: Text(widget.email),
              ),

              ListTile(
                leading: Icon(Icons.phone),
                title: Text(widget.nohp),
              ),
            ],

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}