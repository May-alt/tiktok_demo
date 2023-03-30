import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_demo/layouts/const_app_colors.dart';
import 'package:tiktok_demo/layouts/const_app_reusibale_widgets.dart';
import 'package:tiktok_demo/views/Accueil/componenets/video_player.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final List VideoModel = [
    {
      "video": "assets/video/video_2.mp4",
    },
    {
      "video": "assets/video/video_3.mp4",
    },
    {
      "video": "assets/video/video_2.mp4",
    },
    {
      "video": "assets/video/video_5.mp4",
    },
    {
      "video": "assets/video/video_2.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          scrollDirection: Axis.vertical,
          height: double.infinity,
          viewportFraction: 1.0),
      items: VideoModel.map((video) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: appbackColors,
              child: Stack(
                children: [
                  VideoPlayerBody(videoUrl: video['video']),
                  SectionContinue(),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget SectionContinue() => Padding(
        padding: EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  Icon(
                    Icons.live_tv_outlined,
                    color: dwhite,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Suivis",
                              style: TextStyle(
                                  color: dgrey, fontWeight: FontWeight.w800),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pour toi",
                              style: TextStyle(
                                  color: dwhite, fontWeight: FontWeight.w800),
                            )),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 25,
                    color: dwhite,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(bottom: 15.0, left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "We creat the surreal real.",
                          style: TextStyle(
                              color: dwhite,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 08.0,
                        ),
                        Text(
                          "Rhamadan Dubai Plam.",
                          style: TextStyle(
                              color: dwhite,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        Text(
                          "#live #Rhamadan_karim.",
                          style: TextStyle(color: dwhite, fontSize: 14),
                        ),
                      ],
                    ),
                  )),
                  Container(
                    width: 70,
                    // color: Colors.amber,
                    child: sectionLinks(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget sectionLinks() => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Container(
            height: 60,
           // color: Colors.black,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage("assets/images/photo-5.jpeg"),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                )

              ],
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          sectionIcons(icon: Icons.favorite, text: "124"),
          sectionIcons(icon: IconlyLight.chat, text: "14"),
          sectionIcons(icon: Icons.bookmark, text: "2"),
          sectionIcons(icon: Icons.share_outlined, text: "Partager"),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/disc_icon.png"),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      );
}
