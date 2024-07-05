import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_generation.dart/generate_qr_code.dart';
import 'package:qr_code_scanner/qr_generation.dart/scan_qr_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QR code scanner and genetator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade300,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ScanQrCode()));
                  });
                },
                child: const Text(
                  'Scan QR code',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 48,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade300),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GenerateQrCode()));
                  });
                },
                child: const Text(
                  'Generate QR code',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
