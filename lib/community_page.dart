import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Community'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di halaman Community',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Bergabung dengan Komunitas'),
              onPressed: () {
                // Implementasi aksi ketika tombol ditekan
              },
            ),
            ElevatedButton(
              child: Text('Lihat Anggota Komunitas'),
              onPressed: () {
                // Implementasi aksi ketika tombol ditekan
              },
            ),
            ElevatedButton(
              child: Text('Cari Komunitas'),
              onPressed: () {
                // Implementasi aksi ketika tombol ditekan
              },
            ),
          ],
        ),
      ),
    );
  }
}
