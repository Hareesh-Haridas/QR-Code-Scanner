import 'package:flutter/material.dart';
import 'package:qr_code_scanner/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QR code scanner and generator',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
