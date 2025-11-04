import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF7F9FB),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: RecipeCardWithImage(),
          ),
        ),
      ),
    );
  }
}

class RecipeCardWithImage extends StatelessWidget {
  const RecipeCardWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Si el ancho disponible es menor de 600 px, se mostrará la imagen a la derecha
        bool isNarrow = constraints.maxWidth < 600;

        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
          ),
          child: isNarrow
              // Vista móvil → texto a la izquierda, imagen a la derecha
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 5, child: _RecipeInfo()),
                    const SizedBox(width: 12),
                    Expanded(flex: 4, child: _RecipeImage()),
                  ],
                )
              // Vista escritorio/tablet → diseño horizontal clásico
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 4, child: _RecipeInfo()),
                    const SizedBox(width: 12),
                    Expanded(flex: 5, child: _RecipeImage()),
                  ],
                ),
        );
      },
    );
  }
}

class _RecipeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Torta de Chocolate',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          'La torta de chocolate es un postre suave y esponjoso '
          'hecho con cacao, ideal para los amantes del chocolate '
          'y perfecto para cualquier ocasión.',
        ),
        const SizedBox(height: 12),
        Row(
          children: const [
            Icon(Icons.star, color: Colors.amber, size: 10),
            Icon(Icons.star, color: Colors.amber, size: 10),
            Icon(Icons.star, color: Colors.amber, size: 10),
            Icon(Icons.star_half, color: Colors.amber, size: 10),
            Icon(Icons.star_border, color: Colors.amber, size: 10),
            SizedBox(width: 6),
            Text('170 Reviews', style: TextStyle(color: Colors.black54)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Info(icon: Icons.event, label: 'PREP', value: '25 min'),
            Info(icon: Icons.timer, label: 'COOK', value: '1 hr'),
            Info(icon: Icons.restaurant, label: 'FEEDS', value: '4-6'),
          ],
        ),
      ],
    );
  }
}

class _RecipeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1, // Relación 1:1 para que se vea bien en móvil
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/images/torta.jpeg',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const Info({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20, color: Colors.teal),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}
