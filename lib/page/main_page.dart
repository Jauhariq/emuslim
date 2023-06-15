import 'package:emuslim/page/kisah_nabi_page.dart';
import 'package:emuslim/page/renungan_page.dart';
import 'package:emuslim/page/asmaul_husna_page.dart';
import 'package:emuslim/page/ayat_kursi_page.dart';
import 'package:emuslim/page/bacaan_sholat_page.dart';
import 'package:emuslim/page/doa_harian_page.dart';
import 'package:emuslim/page/niat_sholat_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("E-Muslim"),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff0e1446),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 7, // Ubah jumlah item menjadi 3
        itemBuilder: (context, index) {
          // Tentukan teks dan URL gambar sesuai indeks
          String text;
          String imageUrl;
          var screen;
          if (index == 0) {
            text = 'Niat Sholat';
            imageUrl = 'assets/images/niatsholat.jpg';
            screen = NiatSholat();
          } else if (index == 1) {
            text = 'Bacaan Sholat';
            imageUrl = 'assets/images/bacaansholat.jpg';
            screen = BacaanSholat();
          } else if (index == 2) {
            text = 'Ayat Kursi';
            imageUrl = 'assets/images/ayatkursi.jpg';
            screen = AyatKursi();
          } else if (index == 3) {
            text = 'Asmaul Husna';
            imageUrl = 'assets/images/asmaulhusna.jpg';
            screen = AsmaulHusna();
          } else if (index == 4) {
            text = 'Doa Harian';
            imageUrl = 'assets/images/doaharian.jpg';
            screen = DoaHarian();
          } else if (index == 5) {
            text = 'Renungan';
            imageUrl = 'assets/images/renungan.jpg';
            screen = Renungan();
          } else {
            text = 'Kisah Nabi & Rasul';
            imageUrl = 'assets/images/kisahnabi.jpeg';
            screen = KisahNabi();
          }

          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: GestureDetector(
              onTap: () {
                // Tambahkan fungsi navigasi sesuai dengan indeks
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => screen));
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageUrl),
                  ),
                ),
                child: Stack(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
