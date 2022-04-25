import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/group_vedio_call_widget/re_usable.dart';

class GroupVedioCallScreen extends StatelessWidget {
  const GroupVedioCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Column(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: ReUsable(
                        image: "assets/user1.png",
                        text: "01",
                        text2: "USR003",
                        icon: Icons.search,
                        icon2: Icons.voice_chat,
                        iconcolor: Colors.white,
                        ischecked: false,
                      )),
                  Expanded(
                      flex: 1,
                      child: ReUsable(
                        image: "assets/user4.png",
                        text: "03",
                        text2: "USR014",
                        icon: Icons.remove_circle,
                        icon2: Icons.voice_chat,
                        ischecked: false,
                      )),
                  Expanded(
                      flex: 1,
                      child: ReUsable(
                        image: "assets/People5.png",
                        text: "05",
                        text2: "USR029",
                        icon: Icons.remove_circle_outline,
                        ischecked: false,
                      ))
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: ReUsable(
                        image: "assets/user3.png",
                        text: "02",
                        text2: "USR003",
                        icon: Icons.search,
                        iconcolor: Colors.white,
                        ischecked: false,
                      )),
                  Expanded(
                      flex: 1,
                      child: ReUsable(
                        image: "assets/user2.png",
                        text: "04",
                        text2: "USR014",
                        icon: Icons.remove_circle,
                        ischecked: false,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        // height: 100,
                        width: 205,
                        color: Color(0xFF1A272D),
                        child: Center(
                            child: Icon(
                          Icons.emoji_people,
                          size: 70,
                        )),
                      ))
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.voice_chat,
                          color: Colors.black,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 30,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.phone),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.video_collection,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        backgroundColor: Color(0xFFFFB9C5),
                        radius: 30,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.voice_over_off,
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFF2BC),
                      radius: 30,
                      child: Icon(
                        Icons.chrome_reader_mode,
                        color: Color(0xFFE4BB15),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFAEF6C3),
                      radius: 30,
                      child: Icon(Icons.settings),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
