import 'package:flutter/material.dart';
import 'ScanCode.dart';
import 'button_func.dart';
import 'generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
      //MaterialApp(debugShowCheckedModeBanner: false,home: HomePage(),);
      Scaffold(
      appBar: AppBar(
        title: Text(
          'QR',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent.shade100,
      ),
       body:
       //HomePage()
    Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            createElevatedButton(
              'QR Scan Code Page',
                  () {
                setState(() {
                  Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Scancode()));
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            createElevatedButton(
              'Generator',
                  () {
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Generator()));
                });
              },
            ),
          ],
        ),
      ),
   );
  }
}
