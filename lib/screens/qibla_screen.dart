import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

class QiblaScreen extends StatefulWidget {
  @override
  _QiblaScreenState createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  final _stream = FlutterQiblah.qiblahStream;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arah Kiblat')),
      body: StreamBuilder<QiblahDirection>(
        stream: _stream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final direction = snapshot.data!;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Arah Kiblat: ${direction.qiblah}°'),
              SizedBox(height: 20),
              Transform.rotate(
                angle: direction.qiblah * (3.1415926535 / 180) * -1,
                child: Icon(Icons.arrow_upward, size: 120),
              ),
            ],
          );
        },
      ),
    );
  }
}
