import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Aplikasi Qibla & Informasi Islami', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Versi: 1.0'),
            SizedBox(height: 12),
            Text('Aplikasi ini berfungsi untuk melihat arah kiblat, membaca doa harian, serta menampilkan berbagai informasi islami.'),
            Expanded(child: Container()),
            Center(child: Text('Copyright © Andri Noviar_24552012009')),
          ],
        ),
      ),
    );
  }
}
