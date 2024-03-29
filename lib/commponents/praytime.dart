import 'package:flutter/material.dart';
import 'package:planing/const/color.dart';

class PrayerTimeListWidget extends StatelessWidget {
  const PrayerTimeListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(66, 168, 195, 1),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color:
                  CustomColors.title, // Ganti dengan warna yang Anda inginkan
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ), // Tambahkan border radius
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Prayer',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF454545),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Start',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF454545),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'End',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF454545),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PrayerTimeRow(title: "Fajr", start: "6:14", end: "6:35"),
                SizedBox(height: 10),
                PrayerTimeRow(title: "Dhuhar", start: "12:30", end: "13:00"),
                SizedBox(height: 10),
                PrayerTimeRow(title: "Asr", start: "15:30", end: "16:00"),
                SizedBox(height: 10),
                PrayerTimeRow(title: "Magrib", start: "18:30", end: "19:00"),
                SizedBox(height: 10),
                PrayerTimeRow(title: "Isha", start: "19:30", end: "20:00"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PrayerTimeRow extends StatelessWidget {
  final String title;
  final String start;
  final String end;

  const PrayerTimeRow({
    Key? key,
    required this.title,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              start,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              end,
              textAlign: TextAlign.end,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
