import 'dart:io';

import 'package:asal_gores/daftarPage_view.dart';
import 'package:asal_gores/masukPage_view.dart';
import 'package:asal_gores/postPage_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({key}) : super(key: key);

  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d6d6),
      appBar: AppBar(
        backgroundColor: Color(0xff202020),
        elevation: 40.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 60,
            ),
            Text(
              "Asal.Gores",
              style: TextStyle(
                color: Color(0xffD6D6D6),
                fontSize: 25,
                height: 2,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: User != null ? _login(context) : _belumLogin(context),
    );
  }
}

Widget _belumLogin(BuildContext context) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Icon(
            Icons.person,
            size: 250,
          ),
        ),
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff202020),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MasukPage()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  "Masuk",
                  style: TextStyle(color: Color(0xffd6d6d6)),
                ),
              ),
            )),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 15),
            children: [
              TextSpan(
                text: 'anda belum punya akun?',
                style: TextStyle(color: Color(0xff202020)),
              ),
              TextSpan(
                text: ' Daftar',
                style: TextStyle(color: Colors.redAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DaftarPage()));
                  },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _login(context) {
  return ListView(
    children: [
      Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/konten4.jpg'),
                  radius: 100,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "9999",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff686D76),
                    ),
                  ),
                  Text(
                    "Suka",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff686d76),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "9999",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff686D76),
                    ),
                  ),
                  Text(
                    "Pengikut",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff686D76),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "9999",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff686D76),
                    ),
                  ),
                  Text(
                    "Postingan",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff686D76),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff202020),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MasukPage()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  "Edit Profil",
                  style: TextStyle(color: Color(0xffd6d6d6)),
                ),
              ),
            ),
          ),
          _listPostOrang(context),
        ],
      ),
    ],
  );
}

Widget _listPostOrang(context) {
  return GridView.count(
    crossAxisCount: 3,
    shrinkWrap: true,
    crossAxisSpacing: 2,
    mainAxisSpacing: 2,
    children: [
      _postItem(context),
      _postItem(context),
      _postItem(context),
      _postItem(context),
    ],
  );
}

Widget _postItem(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PostPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/konten4.jpg'),
          ),
        ),
      ));
}
