import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'button_func.dart';

class Generator extends StatefulWidget {
  const Generator({super.key});

  @override
  State<Generator> createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  TextEditingController qrController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generator QR'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (qrController.text.isNotEmpty)
                QrImageView(
                  data: qrController.text,
                  size: 200,
                  version: QrVersions.auto,
                ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: TextField(
                  controller: qrController,
                  decoration: InputDecoration(
                    hintText: 'Enter your data for QR'
                  ),
                ),
              ),
              SizedBox(height: 10,),
        createElevatedButton(
          'Generate QR Code',
              () {
            setState(() {

            });
          },
        )],
          ),
        ),
      ),
    );
  }
}
