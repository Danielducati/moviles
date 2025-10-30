import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF7F9FB),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                RecipeCard(), // Tarjeta principal
                SizedBox(height: 24),
                RecipeWithImage(), // Tarjeta + imagen
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Strawberry Pavlova',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          const SizedBox(height: 8),
          const Text(
            'Postre de merengue con crema batida y frutas frescas. '
            'Crujiente por fuera, suave por dentro. 🌸',
          ),

          const SizedBox(height: 12),

          //  Estrellas + reviews
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star, color: Colors.amber, size: 18),
              Icon(Icons.star_border, color: Colors.amber, size: 18),
              Spacer(),
              Text('170 Reviews'),
            ],
          ),

          const SizedBox(height: 12),

          //  Info (prep, cook, feeds)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Info(icon: Icons.event, label: 'PREP', value: '25 min'),
              Info(icon: Icons.timer, label: 'COOK', value: '1 hr'),
              Info(icon: Icons.restaurant, label: 'FEEDS', value: '4-6'),
            ],
          ),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const Info({super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}

class RecipeWithImage extends StatelessWidget {
  const RecipeWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Si hay suficiente ancho, muestra Row; si no, Column
    final isWide = MediaQuery.of(context).size.width > 600;

    final image = ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset('assets/images/torta.jpeg',
          height: 220, width: double.infinity, fit: BoxFit.cover),
    );

    return isWide
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: const RecipeCard()),
              const SizedBox(width: 12),
              Expanded(child: image),
            ],
          )
        : Column(
            children: [
              const RecipeCard(),
              const SizedBox(height: 12),
              image,
            ],
          );
  }
}
