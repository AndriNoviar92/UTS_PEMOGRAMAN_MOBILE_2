import 'package:flutter/material.dart';

class InfoGridScreen extends StatelessWidget {
  final items = [
    {'title': 'Doa Harian', 'icon': Icons.book},
    {'title': 'Artikel Islami', 'icon': Icons.menu_book},
    {'title': 'Niat Shalat', 'icon': Icons.self_improvement},
    {'title': 'Masjid Terdekat', 'icon': Icons.location_on},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informasi Islami')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final it = items[index];
            return Card(
              elevation: 3,
              child: InkWell(
                onTap: () {
                  // Placeholder: bisa dilink ke detail
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(it['title']!)));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(it['icon'] as IconData, size: 48),
                    SizedBox(height: 10),
                    Text(it['title'] as String, textAlign: TextAlign.center),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
