import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
      body: Column(
        children: [
          Image.network(
            'https://picsum.photos/400/200',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'Selamat datang di Aplikasi Komunitas',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text('Komunitas'),
                  onTap: () {
                    Navigator.pushNamed(context, '/community');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.event),
                  title: Text('Acara'),
                  onTap: () {
                    Navigator.pushNamed(context, '/events');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profil'),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text('Direktori'),
                  onTap: () {
                    Navigator.pushNamed(context, '/directory');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
