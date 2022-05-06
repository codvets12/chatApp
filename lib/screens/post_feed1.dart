import 'package:first_check/provider/auth_provider/auth_provider.dart';
import 'package:first_check/screens/post_feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/post_feed1_widgets/app_bar.dart';
import '../widgets/post_feed1_widgets/list_view_widget.dart';
import '../widgets/post_feed1_widgets/mind_widget.dart';
import '../widgets/post_feed1_widgets/post_widget.dart';

class PostFeed1 extends StatelessWidget {
  const PostFeed1({Key? key}) : super(key: key);

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
                text: "BESTITOO",
                Notificationicon: Icons.notification_add,
                Searchicon: Icons.search,
                Settingicon: Icons.settings,
                Clockicon: Icons.lock_clock,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Suggestions Friends",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text(
                      "View All Friends",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
              ),
              ListViewWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: [Text("Recent Post")],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                child: PostWidget(
                  circleimage: "assets/Mask Group 7.png",
                  name: "lucas steven",
                  icon: Icons.lock_clock,
                  daytext: "wednesday",
                  timetext: "10:12",
                  icon2: Icons.menu_open,
                  posttext:
                      "Lorem ipsum is simply dummy textof the printing\nandindustry",
                  linktext: "  #workfrom home  Office",
                  image: "assets/Mask Group 8.png",
                  viewstext: "92 views",
                  viewsicons: Icons.remove_red_eye,
                  isAlignment: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostFeedScreen()));
                      },
                      child: Text("button")),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<AuthProvider>(context, listen: false)
                            .Signout(context);
                      },
                      child: Text("Sign out")),
                ],
              )
            ],
          ),
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
