import 'package:flutter/material.dart';

import '../models/models.dart';
import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: TextField(
                  decoration:
                      InputDecoration(hintText: 'What\'s on your mind?'),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: 40,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print("live");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.videocam,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "live",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]),
                  ),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print("photo");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.photo_library,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "photo",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]),
                  ),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print("video call");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.video_call,
                            color: Colors.purpleAccent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "room",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
