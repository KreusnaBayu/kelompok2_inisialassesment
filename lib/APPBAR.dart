import 'package:flutter/material.dart';
import 'package:planing/commponents/imagecontroller.dart';
import 'package:planing/commponents/mosque_identity.dart';
import 'package:planing/commponents/praytime.dart';
import 'package:planing/const/color.dart';
import 'package:planing/const/url.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Mesjid',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF515151),
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
            color: Color(0xFF515151)),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert,
              color: Color(0xFF515151)),
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: CustomColors.krem, // Ganti dengan warna yang Anda inginkan
            ),
            Positioned(
              top: -250.0,
              left: -20.0,
               // Sesuaikan posisi lingkaran
              // Sesuaikan posisi lingkaran
              child: Container(
                width: 500.0, // Sesuaikan lebar lingkaran
                height: 500.0, // Sesuaikan tinggi lingkaran
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColors
                      .blue, // Ganti dengan warna latar belakang Anda
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 80),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.transparent,
                    ),
                    height: 250,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/masjid2.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Text(
                            'Masjid Istiqlal',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6, // Jumlah gambar
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: index == 0 ? 20 : 5),
                          child: buildImageContainer(getImageUrl(index)),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  MosqueIdentity(
                    mosqueName: 'Istiqlal',
                    mosqueLocation: 'Jakarta, Indonesia',
                    mosquePhone: '+62 21 3822648',
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: PrayerTimeListWidget(),
                      ),
                      const SizedBox(height: 250,),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              print('Button pressed');
                            },
                            icon: Image.asset('assets/lokasi.png'),
                            label: const Text('Direction',
                            style: TextStyle(
                              color: CustomColors.blue,
                              fontWeight: FontWeight.bold
                            ),),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
