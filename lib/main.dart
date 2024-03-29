import 'package:flutter/material.dart';
import 'package:planing/components/mosque_identity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        // AppBar
        // Body
        body: Row(
          children: [
            MosqueIdentity(
              mosqueName: "Umar Mosque",
              mosqueLocation:
                  "6Q68+7FM, Tullamulla, Saloora, Jammu and Kashmir, 191201",
              mosquePhone: "+91-124675789",
            ),
          ],
        ),
      ),
    );
  }
}
