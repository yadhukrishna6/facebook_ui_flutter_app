import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            profile: yadhu,
            story: yadhuk,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Yadhu",
            profile: yadhu,
            story: boys,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "friends",
            profile: yadhukr,
            story: friend,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Boys",
            profile: yadhu,
            story: friends,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
