import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d6d6),
      appBar: AppBar(
        elevation: 40.0,
        backgroundColor: Color(0xff202020),
        title: Text("Notification"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _filter("Hari Ini"),
          for (var i = 0; i < 4; i++) _notificationItem(),
          _filter("bulan depan"),
          for (var i = 0; i < 9; i++) _notificationItem(),
        ],
      ),
    );
  }
}

Widget _filter(String jangka_waktu) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey, width: 1.0),
      ),
    ),
    child: Text(
      jangka_waktu,
      style: TextStyle(fontSize: 20),
    ),
  );
}

Widget _notificationItem() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: CircleAvatar(
            radius: 35.0,
            backgroundImage: AssetImage('assets/images/konten1.jpg'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Faiq Aminullah menyukai postingan anda",
                style: TextStyle(color: Color(0xff202020))),
            Text("2 jam yang lalu",
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
        Expanded(
          child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/images/konten1.jpg'),
                fit: BoxFit.contain,
              )),
        ),
      ],
    ),
  );
}
