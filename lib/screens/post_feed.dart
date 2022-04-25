import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/post_feed1_widgets/app_bar.dart';
import '../widgets/post_feed1_widgets/mind_widget.dart';
import '../widgets/post_feed1_widgets/post_widget.dart';
import 'chat_list.dart';

class PostFeedScreen extends StatelessWidget {
  PostFeedScreen({Key? key}) : super(key: key);
  List images = [
    'assets/simple.png',
    'assets/simple1.png',
    'assets/simple2.png',
    'assets/simple3.png',
    'assets/simple4.png'
  ];
  List image = [
    'assets/plus.png',
    'assets/Status.png',
    'assets/secont status.png',
    'assets/third status.png',
    'assets/third status.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(
                ischecked: true,
                iscolor: true,
                text: "INVOTOO",
                Notificationicon: Icons.notification_add,
                Searchicon: Icons.search,
                Settingicon: Icons.settings,
                Clockicon: Icons.arrow_back,
              ),
              YourMind(
                image: "assets/circle.png",
                text: "What on your mind? post here",
                icon: Icons.search,
                Friendicon: Icons.child_friendly,
                friendtext: "Friends",
                Posticon: Icons.post_add,
                posttext: "Post",
                Tagicon: Icons.tag_rounded,
                tagtext: "Tag",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: SizedBox(
                  height: 170,
                  child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 0),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Image.asset(
                                    images[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 40,
                              child: CircleAvatar(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset(
                                    image[index],
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Column(
                children: [
                  PostWidget(
                    circleimage: "assets/postimage.png",
                    name: "Gordon",
                    icon: Icons.lock_clock,
                    daytext: "Today",
                    timetext: "10:12",
                    icon2: Icons.menu,
                    posttext: "Ready to watch movie",
                    image: "assets/vedio image.png",
                    viewstext: "92 views",
                    viewsicons: Icons.remove_red_eye_sharp,
                    isrow: true,
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatListScreen()));
                  },
                  child: Text("button"))
            ],
          ),
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
