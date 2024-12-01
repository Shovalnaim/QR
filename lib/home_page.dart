import 'package:flutter/material.dart';
import 'package:qrProject/generator.dart';
import 'ScanCode.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(24),
            child: Text('QR Code'),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buttonGenerate(
                      context,
                      'Generate QR Code',
                      Icons.qr_code,
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Generator()))),
                  SizedBox(
                    height: 20,
                  ),
                  _buttonGenerate(
                      context,
                      'Scan QR Code',
                      Icons.qr_code_scanner,
                      () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Scancode())))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget _buttonGenerate(BuildContext context, String title, IconData icon,
      VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(15),
        height: 200,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 90,
              color: Colors.white,
            ),
            Text(
              title,
            )
          ],
        ),
      ),
    );
  }
}
