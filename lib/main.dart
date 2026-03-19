import 'package:flutter/material.dart';
// Importación corregida según tu estructura de carpetas
import 'package:flutter_clima/vista/vista.dart';

void main() {
  runApp(const MiAppClima());
}

class MiAppClima extends StatelessWidget {
  const MiAppClima({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App del clima',
      theme: ThemeData(useMaterial3: true),
      // Asegúrate de que el nombre de la clase en vista.dart sea VistaPrincipal
      home: const VistaPrincipal(),
    );
  }
}
