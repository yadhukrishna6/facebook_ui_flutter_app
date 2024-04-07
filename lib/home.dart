import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/widgets/headerbutton.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/circlularButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print(" search screen appears!");
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print(" message screen appears!");
                }),
          ],
        ),
        body: ListView(children: [
          StatusSection(),
          thinDivider,
          HeaderButtonSection(
            buttonone: hederButton(
              buttonAction: () {
                print("Go live");
              },
              buttonColor: Colors.red,
              buttonIcon: Icons.video_call,
              buttonText: "Live",
            ),
            buttonTwo: hederButton(
              buttonAction: () {
                print("Take photo");
              },
              buttonColor: Colors.green,
              buttonIcon: Icons.photo_library,
              buttonText: "photo",
            ),
            buttonThree: hederButton(
              buttonAction: () {
                print("Create Room");
              },
              buttonColor: Colors.purple,
              buttonIcon: Icons.video_call,
              buttonText: "room",
            ),
          ),
          thickDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
          thickDivider,
          PostCard(
            profile: yadhu,
            name: "Yadhukrishna",
            publishedAt: '5h',
            postTitle: 'Friends',
            postimage: friend,
            showBluetick: true,
            likeCount: '10k',
            shareCount: '1k',
            commentCount: '1k',
          ),
          thickDivider,
          PostCard(
            profile: yadhukr,
            name: "Gang of poolachode",
            publishedAt: '10h',
            postTitle: ' ',
            postimage: friends,
            showBluetick: true,
            likeCount: '5k',
            shareCount: '50k',
            commentCount: '500',
          ),
          thickDivider,
          PostCard(
            profile: nivin,
            name: "nivinpaulyactor",
            publishedAt: '10h',
            postTitle: varshamkalkutitle,
            postimage: download,
            showBluetick: true,
            likeCount: '5k',
            shareCount: '50k',
            commentCount: '500',
          ),
          thickDivider,
          PostCard(
            profile: friends3,
            name: "DCHM",
            publishedAt: '14h',
            postTitle: "Trip to goa",
            postimage: friends3,
            showBluetick: true,
            likeCount: '5k',
            shareCount: '50k',
            commentCount: '500',
          ),
          thickDivider,
          PostCard(
            profile: yadhukri,
            name: "Kannan",
            publishedAt: '22h',
            postTitle: "",
            postimage: yadhukrish,
            showBluetick: false,
            likeCount: '5k',
            shareCount: '50k',
            commentCount: '500',
          ),
          thickDivider,
          PostCard(
            profile: yadhukrishna,
            name: "Yadhu623871",
            publishedAt: '1h',
            postTitle: 'A Great day ',
            postimage: yadhukrishna,
            showBluetick: false,
            likeCount: '1k',
            shareCount: '50',
            commentCount: '180',
          ),
        ]),
      ),
    );
  }
}
