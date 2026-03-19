import 'package:flutter/material.dart';

class VistaPrincipal extends StatelessWidget {
  const VistaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    // El Scaffold controla el diseño básico de la pantalla
    return Scaffold(
      // === AQUÍ CAMBIAMOS EL COLOR DE FONDO ===
      backgroundColor: const Color(0xFFF0F2F5), // Un gris azulado muy claro
      // O puedes usar uno predefinido como: Colors.blue.shade50
      appBar: AppBar(
        title: const Text(
          'App del Clima',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // Hacemos que la barra superior combine
        backgroundColor: Colors.blue,
        elevation: 2, // Añade una pequeña sombra
      ),
      body: Center(
        child: SingleChildScrollView(
          // Para evitar errores de desbordamiento
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icono principal (más llamativo en azul)
              const Icon(
                Icons.wb_sunny_rounded, // Un sol
                size: 130,
                color: Colors.orangeAccent,
              ),
              const SizedBox(height: 50),

              // Buscador blanco sobre el fondo de color
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Fondo blanco para el buscador
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ingrese una ciudad",
                    prefixIcon: const Icon(Icons.search, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none, // Quitamos el borde negro
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),

              // Texto inferior
              const Text(
                "¡Busca tu ciudad! 🌍",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
