import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView(
        children: [
          EventCard(
            title: 'Workshop Flutter',
            date: '21 Mei 2023',
            location: 'Gedung ABC',
            image: 'https://source.unsplash.com/random/400x200',
          ),
          EventCard(
            title: 'Seminar UI/UX Design',
            date: '28 Mei 2023',
            location: 'Gedung XYZ',
            image: 'https://source.unsplash.com/random/400x200',
          ),
          EventCard(
            title: 'Hackathon',
            date: '4 Juni 2023',
            location: 'Gedung PQR',
            image: 'https://source.unsplash.com/random/400x200',
          ),
          EventCard(
            title: 'Pelatihan DevOps',
            date: '11 Juni 2023',
            location: 'Gedung MNO',
            image: 'https://source.unsplash.com/random/400x200',
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String location;
  final String image;

  EventCard({
    required this.title,
    required this.date,
    required this.location,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Action when card is tapped
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 4.0),
                      Text(date),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 4.0),
                      Text(location),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
