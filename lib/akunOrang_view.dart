import 'package:asal_gores/postPage_view.dart';
import 'package:flutter/material.dart';

class AkunOrangPage extends StatefulWidget {
  const AkunOrangPage({key}) : super(key: key);

  @override
  _AkunOrangPageState createState() => _AkunOrangPageState();
}

class _AkunOrangPageState extends State<AkunOrangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d6d6),
      appBar: AppBar(
        elevation: 40.0,
        backgroundColor: Color(0xff202020),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Maliki_nicolas"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          _userProfil(),
          _actionButton(),
          _listPostOrang(context),
        ],
      ),
    );
  }
}

Widget _userProfil() {
  return Column(
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
    ],
  );
}

Widget _actionButton() {
  return Container(
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
            "Ikuti",
            style: TextStyle(color: Color(0xffd6d6d6)),
          ),
        ),
      ));
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
