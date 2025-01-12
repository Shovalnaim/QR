import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'button_func.dart';

class Scancode extends StatefulWidget {
  const Scancode({super.key});

  @override
  State<Scancode> createState() => _ScancodeState();
}

class _ScancodeState extends State<Scancode> {
  String result = ' Scanned code will appear here';
  Future<void> scanQR() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'cancle', true, ScanMode.QR);
      if (!mounted) return;
      setState(() {
        this.result = qrCode.toString();
      });
    } on PlatformException {
      result = 'fail to read qr';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              '$result',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            createElevatedButton('Scan code', () {
              scanQR();
            })

          ],
        ),
      ),
    );
  }
}
