import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Anggota Kelompok'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCard(
              name: 'Ahmad Isha Latif',
              studentId: '22091397041',
              phoneNumber: '081234567890',
              imageUrl: 'images/isha.jpg',
              backgroundColor: Colors.blue,
            ),
            SizedBox(height: 20),
            ProfileCard(
              name: 'Fahreza Azi prayodha',
              studentId: '22091397042',
              phoneNumber: '087654321098',
              imageUrl: 'images/fahreza.jpg',
              backgroundColor: Colors.purple,
            ),
            SizedBox(height: 20),
            ProfileCard(
              name: 'Mohamad Dhil Annafi',
              studentId: '22091397056',
              phoneNumber: '089876543210',
              imageUrl: 'images/dhil.jpg',
              backgroundColor: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String studentId;
  final String phoneNumber;
  final String imageUrl;
  final Color backgroundColor;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.studentId,
    required this.phoneNumber,
    required this.imageUrl,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: backgroundColor,
            ),
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  studentId,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 5),
                    Text(
                      phoneNumber,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
