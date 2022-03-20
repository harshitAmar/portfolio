// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final creations = [
      Container(
        padding: MediaQuery.of(context).size.width > 600
            ? EdgeInsets.all(0)
            : EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width > 600
            ? MediaQuery.of(context).size.width * .25
            : MediaQuery.of(context).size.width * .8,
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: "l2DRB4Qiy1U",
            flags: const YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          ),
        ),
      ),
      Container(
        padding: MediaQuery.of(context).size.width > 600
            ? EdgeInsets.all(0)
            : EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width > 600
            ? MediaQuery.of(context).size.width * .25
            : MediaQuery.of(context).size.width * .8,
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: "8V7c52b9Wk8",
            flags: const YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          ),
        ),
      ),
      Container(
        padding: MediaQuery.of(context).size.width > 600
            ? EdgeInsets.all(0)
            : EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width > 600
            ? MediaQuery.of(context).size.width * .25
            : MediaQuery.of(context).size.width * .8,
        child: YoutubePlayer(
          controller: YoutubePlayerController(
              initialVideoId: "MNPJcLmettY",
              flags: const YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              )),
        ),
      ),
    ];
    final applications = [
      Container(
        padding: MediaQuery.of(context).size.width > 600
            ? EdgeInsets.all(0)
            : EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width > 600
            ? MediaQuery.of(context).size.width * .25
            : MediaQuery.of(context).size.width * .8,
        child: Image.asset(""),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            padding: MediaQuery.of(context).size.width > 600
                ? EdgeInsets.all(
                    MediaQuery.of(context).size.width * .05,
                  )
                : null,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width > 600
                      ? MediaQuery.of(context).size.height * .4
                      : null,
                  child: MediaQuery.of(context).size.width > 600
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: MediaQuery.of(context).size.width > 600
                                  ? EdgeInsets.only(
                                      left: 80,
                                      top: 40,
                                      right: 30,
                                    )
                                  : null,
                              width: MediaQuery.of(context).size.width * .6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amarjeet Srivastava",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Flutter Developer at Papaya Coders",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 78, 75, 75),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        launch("https://linktr.ee/harshitamar");
                                      },
                                      child: Text(
                                        "Social Media Profiles",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 41, 51, 78),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Tempor diam ea ipsum et dolor et. Amet rebum ipsum ut gubergren stet ea clita sadipscing, sed dolor at Rebum invidunt magna rebum no sit nonumy duo diam. Sit takimata ut elitr ipsum aliquyam ipsum et, sit eirmod era.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 75, 70, 70),
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width * .3,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/amarjeet.jpg",
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                top: 30,
                                left: 30,
                                right: 30,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        "assets/amarjeet.jpg",
                                      ),
                                      radius: 80,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Amarjeet Srivastava",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Flutter Developer at Papaya Coders",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 78, 75, 75),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        launch("https://linktr.ee/harshitamar");
                                      },
                                      child: Text(
                                        "Social Media Profiles",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 41, 51, 78),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Tempor diam ea ipsum et dolor et. Amet rebum ipsum ut gubergren stet ea clita sadipscing, sed dolor at Rebum invidunt magna rebum no sit nonumy duo diam. Sit takimata ut elitr ipsum aliquyam ipsum et, sit eirmod era.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 75, 70, 70),
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * .03,
                ),
                Divider(
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width > 600 ? null : 40,
                  endIndent:
                      MediaQuery.of(context).size.width > 600 ? null : 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * .03,
                ),
                Text(
                  "My Creations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Divider(
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width > 600
                      ? MediaQuery.of(context).size.width * .35
                      : MediaQuery.of(context).size.width * .26,
                  endIndent: MediaQuery.of(context).size.width > 600
                      ? MediaQuery.of(context).size.width * .35
                      : MediaQuery.of(context).size.width * .26,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: MediaQuery.of(context).size.width < 600
                        ? EdgeInsets.only(left: 20)
                        : EdgeInsets.all(0),
                    child: Text(
                      "Youtube Videos",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color.fromARGB(255, 78, 75, 75),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MediaQuery.of(context).size.width > 600
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: creations,
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: creations,
                      ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width > 600 ? null : 40,
                  endIndent:
                      MediaQuery.of(context).size.width > 600 ? null : 40,
                ),
                /*   SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: MediaQuery.of(context).size.width < 600
                        ? EdgeInsets.only(left: 20)
                        : EdgeInsets.all(0),
                    child: Text(
                      "Android Applications",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color.fromARGB(255, 78, 75, 75),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MediaQuery.of(context).size.width > 600
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: applications,
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: applications,
                      ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width > 600 ? null : 40,
                  endIndent:
                      MediaQuery.of(context).size.width > 600 ? null : 40,
                ),
                SizedBox(
                  height: 20,
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
