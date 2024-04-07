import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:facebook_ui/widgets/headerbutton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profile;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postimage;
  final bool showBluetick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  const PostCard({
    super.key,
    required this.profile,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postimage,
    this.showBluetick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 2,
          ),
          HeaderButtonSection(
            buttonone: hederButton(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () {
                print("like this post");
              },
              buttonColor: Colors.grey,
            ),
            buttonTwo: hederButton(
              buttonText: "Comment",
              buttonIcon: Icons.message_outlined,
              buttonAction: () {
                print("comment this post");
              },
              buttonColor: Colors.grey,
            ),
            buttonThree: hederButton(
              buttonText: "Share",
              buttonIcon: Icons.share_outlined,
              buttonAction: () {
                print("Share this post");
              },
              buttonColor: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postimage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        : SizedBox();
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 5),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5),
                displayText(label: "comments"),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "Share"),
                SizedBox(width: 10),
                Profile(
                  displayimage: profile,
                  displaystatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Dropdown button pressed");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Profile(
        displayimage: profile,
        displaystatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          showBluetick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            publishedAt == null ? "" : publishedAt,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public_outlined,
            color: Colors.grey[700],
            size: 17,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("open more menu");
        },
        icon: Icon(Icons.more_horiz, color: Colors.grey[700]),
      ),
    );
  }
}
