import 'package:asal_gores/akunOrang_view.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d6d6),
      appBar: AppBar(
        elevation: 40.0,
        backgroundColor: Color(0xff202020),
        leading: GestureDetector(onTap: () {}, child: Icon(Icons.arrow_back)),
        title: Text("Judul", style: TextStyle(color: Color(0xffd6d6d6))),
      ),
      body: Column(
        children: [
          _postImage(),
          _actionIcon(),
          _userProfile(context),
        ],
      ),
    );
  }
}

Widget _postImage() {
  return GestureDetector(
      onDoubleTap: () {},
      child: Container(
        child: Image.asset('assets/images/konten4.jpg'),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1.0),
              spreadRadius: 10,
              blurRadius: 90,
              offset: Offset(0, 10), // changes position of shadow
            ),
          ],
        ),
      ));
}

Widget _actionIcon() {
  return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(children: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_sharp,
            size: 35.0,
          ),
          onPressed: () {},
        ),
        Text(
          "677",
          style: TextStyle(fontSize: 20.0),
        ),
        IconButton(
          icon: Icon(
            Icons.comment_outlined,
            size: 35.0,
          ),
          onPressed: () {},
        ),
        Expanded(
          child: Text(
            "78",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.more_vert,
            size: 35.0,
          ),
          onPressed: () {},
        ),
      ]));
}

Widget _userProfile(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AkunOrangPage()));
      },
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/konten4.jpg'),
              radius: 25,
            ),
          ),
          Text(
            "Maliki_nicolas",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ],
      ));
}
