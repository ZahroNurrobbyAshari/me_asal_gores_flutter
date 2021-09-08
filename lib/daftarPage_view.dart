import 'package:asal_gores/masukPage_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({key}) : super(key: key);

  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xffd6d6d6),
        ),
        child: Column(children: [
          Image.asset(
            'assets/images/logo.png',
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              textInputAction: TextInputAction.go,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                labelText: 'username',
                labelStyle: TextStyle(color: Color(0xff202020)),
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff202020),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              textInputAction: TextInputAction.go,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                labelText: 'username',
                labelStyle: TextStyle(color: Color(0xff202020)),
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff202020),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              textInputAction: TextInputAction.go,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                labelText: 'username',
                labelStyle: TextStyle(color: Color(0xff202020)),
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff202020),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              obscureText: true,
              textInputAction: TextInputAction.go,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                labelText: 'password',
                labelStyle: TextStyle(color: Color(0xff202020)),
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff202020),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff202020)),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff202020),
              ),
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  "Daftar",
                  style: TextStyle(color: Color(0xffd6d6d6)),
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: const EdgeInsets.all(15),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.navigate_before)),
                RichText(
                  text: TextSpan(
                      text: 'Beranda',
                      style: TextStyle(color: Color(0xff202020)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          //do
                        }),
                ),
                Spacer(),
                RichText(
                  text: TextSpan(
                      text: 'Masuk',
                      style: TextStyle(color: Color(0xff202020)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MasukPage()));
                        }),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
