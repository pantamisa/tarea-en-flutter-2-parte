import 'package:flutter/material.dart';
import 'paginaini.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Colegio Quipux",
      debugShowCheckedModeBanner: false,
      home: paginaini(),
    );
  }
}
