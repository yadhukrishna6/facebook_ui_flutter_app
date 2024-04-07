import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          CreateRoomButton(),
          Profile(displayimage: yadhukr, displaystatus: true),
          Profile(displayimage: yadhuk, displaystatus: true),
          Profile(displayimage: yadhukr, displaystatus: true),
          Profile(displayimage: yadhuk, displaystatus: true),
          Profile(displayimage: yadhukr, displaystatus: true),
          Profile(displayimage: yadhuk, displaystatus: true),
        ],
      ),
    );
  }

  Widget CreateRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        onPressed: () {
          print("Create a chat room!");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          " Create \n Room",
          style: TextStyle(
            color: Color.fromARGB(255, 4, 132, 236),
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 2,
            color: Color.fromARGB(255, 188, 213, 234),
          ),
        ),
      ),
    );
  }
}
