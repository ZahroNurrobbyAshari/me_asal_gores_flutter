import 'package:asal_gores/masukPage_view.dart';
import 'package:asal_gores/services/auth_services.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({key}) : super(key: key);

  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d6d6),
      body: ListView(shrinkWrap: true, children: [
        Image.asset(
          'assets/images/logo.png',
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: emailController,
            textInputAction: TextInputAction.go,
            autofocus: true,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              labelText: 'email',
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
            controller: passwordController,
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
            onPressed: () async {
              await AuthServices.signUp(
                  emailController.text, passwordController.text);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MasukPage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                "Daftar",
                style: TextStyle(color: Color(0xffd6d6d6)),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 200, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                ],
              ),
              Row(
                children: [
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
            ],
          ),
        ),
      ]),
    );
  }
}
