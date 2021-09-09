import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:asal_gores/postPage_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'services/database_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon iconSearch = Icon(Icons.search);

  File image;
  String contentImagePath;

  Future pickImage(ImageSource media) async {
    try {
      final image = await ImagePicker().pickImage(source: media);
      if (image == null) return;

      final imageTemporary = File(image.path);

      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Gagal mendapatkan gambar: $e');
    }
  }

  Widget searchBar = Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset(
        'assets/images/logo.png',
        height: 60,
      ),
      Text(
        "Asal.Gores",
        style: TextStyle(
          color: Color(0xffd6d6d6),
          fontSize: 25,
          height: 2,
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d6d6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: AppBar(
          elevation: 40.0,
          backgroundColor: Color(0xff202020),
          title: searchBar,
          actions: <Widget>[
            IconButton(
              icon: iconSearch,
              onPressed: () {
                setState(() {
                  if (this.iconSearch.icon == Icons.search) {
                    this.iconSearch = Icon(Icons.cancel);
                    this.searchBar = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            bottom: 10.0, left: 10.0, right: 10.0),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffD6D6D6),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD6D6D6)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD6D6D6)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD6D6D6)),
                        ),
                      ),
                      style: TextStyle(
                        color: Color(0xffD6D6D6),
                        fontSize: 20.0,
                      ),
                    );
                  } else {
                    this.iconSearch = Icon(Icons.search);
                    this.searchBar = Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    );
                  }
                });
              },
            ),
          ],
        ),
      ),
      body: ListView(shrinkWrap: true, children: [
        _tag("Trending"),
        SizedBox(
          height: 280.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              _trendingPost(
                context,
                'assets/images/konten1.jpg',
                "Maliki Nicolas",
                "677",
                "58",
              ),
              _trendingPost(
                context,
                'assets/images/konten2.jpg',
                "Sholehudin",
                "627",
                "18",
              ),
              _trendingPost(
                context,
                'assets/images/konten3.jpg',
                "Maliki Nicolas",
                "596",
                "8",
              ),
            ],
          ),
        ),
        _tag("For You"),
        GridView.count(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            controller: ScrollController(keepScrollOffset: true),
            crossAxisCount: 2,
            children: [
              // ignore: sdk_version_ui_as_code
              for (var i = 0; i < 50; i++)
                _untukKamuPost('assets/images/konten3.jpg')
            ]),
      ]),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        animatedIconTheme: IconThemeData(size: 22),
        backgroundColor: Color(0xff202020),
        visible: true,
        curve: Curves.bounceIn,
        children: [
          // FAB 1
          SpeedDialChild(
              child: Icon(
                Icons.image_outlined,
                color: Color(0xffd6d6d6),
              ),
              backgroundColor: Color(0xff202020),
              onTap: () {
                // File file = await pickImage(ImageSource.gallery);
                // contentImagePath =
                // await DatabaseServices.uploadContentFile(file);

                // setState(() {});
              },
              label: 'Pilih dari Galeri ',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xffd6d6d6),
                  fontSize: 16.0),
              labelBackgroundColor: Color(0xff202020)),
          // FAB 2
          SpeedDialChild(
              child: Icon(
                Icons.camera_alt_outlined,
                color: Color(0xffd6d6d6),
              ),
              backgroundColor: Color(0xff202020),
              onTap: () => pickImage(ImageSource.camera),
              label: 'Pilih dari Kamera',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xffd6d6d6),
                  fontSize: 16.0),
              labelBackgroundColor: Color(0xff202020))
        ],
      ),
    );
  }
}

// Untuk Kamu Post

Widget _untukKamuPost(String image) {
  return Container(
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.blue,
      border: Border.all(
        color: Color(0xffFFD100),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(24),
      image: DecorationImage(
        image: AssetImage('$image'),
      ),
    ),
  );
}

// Untuk Kamu Post end

// Tag

Widget _tag(String judul) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(15, 8, 30, 8),
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        decoration: BoxDecoration(
          color: Color(0xFF202020),
          borderRadius: BorderRadius.horizontal(right: Radius.circular(30.0)),
          // border: Border.all(
          //   color: Color(0xffFFEE32),
          //   width: 1,
          // ),
        ),
        child: Container(
          child: Text(
            "$judul",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xffD6D6D6),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _trendingPost(BuildContext context, String image, String owner,
    String suka, String komentar) {
  return Column(
    children: [
      // TrendingPost Pict Start

      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PostPage()));
        },
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: 257,
              height: 257,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Color(0xffFFD100),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage('$image'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
              width: 230,
              height: 250,
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Color(0xff333533),
                    ),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        suka,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff333533),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      komentar,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff333533),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.comment,
                      color: Color(0xff333533),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      //TrendingPost Pict End
      //TrendingPost Title and Profil

      Text(
        "By $owner",
        style: TextStyle(
          color: Color(0xff333533),
          fontSize: 16,
        ),
      ),

      //Trending Title and Profil
    ],
  );
}
