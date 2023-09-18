import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(profileCard());
}

class profileCard extends StatelessWidget {
  const profileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProfileCard());
  }
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/saha.jpg",
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: const Card(
                      color: Colors.white54,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25.0),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  AssetImage("assets/giannis-kapak.jpg"),
                            ),
                          ),
                          Text(
                            "\nGIANNIS ANTETOKOUNMPO",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 25.0, left: 30.0, right: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                        height: 30,
                                        width: 30,
                                        image: AssetImage("assets/age.png")),
                                    Text(
                                      "28",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(
                                        height: 30,
                                        width: 30,
                                        image: AssetImage("assets/gr.png")),
                                    Text(
                                      "GREECE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(
                                        height: 30,
                                        width: 30,
                                        image: AssetImage("assets/ball.png")),
                                    Text(
                                      "MILWAUKEE BUCKS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1,
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: Card(
                      elevation: 0,
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 15.0, right: 20.0, left: 20.0),
                          child: Column(
                            children: [
                              Text(
                                "Giannis Antetokounmpo, National Basketball Association takımlarından Milwaukee Bucks forması giyen Nijerya asıllı Yunan profesyonel basketbolcudur. 2.11 metre boyundaki oyuncu öncelikli olarak uzun forvet pozisyonunda görev yapmaktadır.",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: IconButton(
                                      iconSize: 60,
                                      onPressed: () {
                                        _launchURL(
                                            "https://twitter.com/Giannis_An34?t=soy8wMuEFyykHN5WdBA1Sg&s=08");
                                      },
                                      icon: Image.asset("assets/x.png"),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      iconSize: 60,
                                      onPressed: () {
                                        _launchURL(
                                            "https://www.nba.com/player/203507/giannis-antetokounmpo");
                                      },
                                      icon: Image.asset("assets/nba.png"),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      iconSize: 60,
                                      onPressed: () {
                                        _launchURL(
                                            "https://instagram.com/giannis_an34?igshid=MzRlODBiNWFlZA==");
                                      },
                                      icon: Image.asset("assets/ig.png"),
                                    ),
                                  ),
                                ],
                              ),
                              Center(
                                child: Expanded(
                                  child: Image(
                                      color: Color.fromARGB(255, 175, 123, 63),
                                      height: 50,
                                      width: 100,
                                      image: AssetImage("assets/follow.png")),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(var _uri) async {
    Uri _url = Uri.parse(_uri);
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }
}
