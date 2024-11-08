import 'package:flutter/material.dart';
import 'package:menghitung_angsuran/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simulasi Pembiayaan & Cicilan',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
