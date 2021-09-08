import 'package:asal_gores/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:loading_indicator/loading_indicator.dart';

// void Coba(){
//   for()
// };

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return BottomNav();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                Text(
                  " 'seni kegabutan duniawi' ",
                  style: TextStyle(
                    color: Color(0xffD6D6D6),
                    fontSize: 22,
                  ),
                ),
                Container(
                    width: 50,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballPulseSync,

                      /// Required, The loading type of the widget
                      colors: const [Color(0xffD6D6D6)],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
