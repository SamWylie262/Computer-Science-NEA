import 'package:flutter/material.dart';
import 'package:secondly/animations/fade_in_animation.dart';
import 'package:secondly/utils/methods.dart';

class TopicTile extends StatelessWidget {
  const TopicTile({
    super.key,
    required this.topic,
  });

  final String topic;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: GestureDetector(
        onTap: () {
          loadSession(context: context);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset('assets/images/$topic.png'),
                  )),
              Expanded(child: Text(topic)),
            ],
          ),
        ),
      ),
    );
  }
}
