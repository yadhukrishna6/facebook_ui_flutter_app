import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/circlularButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/avatar.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String profile;
  final bool createStoryStatus;
  final bool displayBorder;
  StoryCard({
    super.key,
    required this.labelText,
    required this.story,
    required this.profile,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    IconColor: Color.fromARGB(255, 35, 148, 240),
                    buttonAction: () {
                      print("create new story");
                    },
                  )
                : Profile(
                    displayimage: profile,
                    displaystatus: false,
                    displayborder: displayBorder,
                    width: 40,
                    height: 40,
                  ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText != null ? labelText : "N/A",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
