import 'package:asal_gores/daftarPage_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MasukPage extends StatefulWidget {
  const MasukPage({key}) : super(key: key);

  @override
  _MasukPageState createState() => _MasukPageState();
}

class _MasukPageState extends State<MasukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d6d6),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color(0xffd6d6d6),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Column(children: [
            Image.asset('assets/images/logo.png'),
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
                    "Masuk",
                    style: TextStyle(color: Color(0xffd6d6d6)),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 210, 15, 0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.navigate_before)),
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
                        text: 'Daftar',
                        style: TextStyle(color: Color(0xff202020)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DaftarPage()));
                          }),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next)),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
