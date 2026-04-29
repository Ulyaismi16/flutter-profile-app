import 'package:flutter/material.dart';
import 'package:hello_flutter/page/beranda_page.dart';
import 'package:hello_flutter/page/profile_page.dart';
import 'package:hello_flutter/page/list_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentPage = 0;

  // 🔥 DATA GLOBAL
  String nama = "";
  String lokasi = "";
  String profesi = "";
  String email = "";
  String nohp = "";

  @override
  Widget build(BuildContext context) {

    List<Widget> pages = [

      BerandaPage(
        onSubmit: (n, l, p, e, h) {
          setState(() {
            nama = n;
            lokasi = l;
            profesi = p;
            email = e;
            nohp = h;
            currentPage = 1; // pindah ke profile
          });
        },
      ),

      ProfilePage(
        nama: nama,
        lokasi: lokasi,
        profesi: profesi,
        email: email,
        nohp: nohp,
      ),

      const ListPage(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[currentPage],

        bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentPage,
          onTap: (i) => setState(() => currentPage = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Beranda"),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.list),
              title: Text("List"),
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}