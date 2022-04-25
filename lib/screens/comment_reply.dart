import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/icon_widgets.dart';
import '../helper.dart';
import '../widgets/comment_reply_widget/main_widget_comment.dart';
import '../widgets/post_feed1_widgets/app_bar.dart';
import 'group_vedio.dart';

class CommentReplyScreen extends StatelessWidget {
  const CommentReplyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Column(children: [
                  Container(
                    height: getHeight(context) * 0.29,
                    width: getWidth(context) * double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/Post image.png',
                            ),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60),
                            topLeft: Radius.circular(60))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomAppbar(
                            Notificationicon: Icons.notification_add,
                            Settingicon: Icons.settings,
                            Searchicon: Icons.search,
                            Clockicon: Icons.lock_clock_sharp,
                          ),
                          const CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 15,
                              child: Center(child: Icon(Icons.settings)))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5),
                          child: Column(
                            //  mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("assets/Logo.png"),
                                child: Align(
                                    alignment: Alignment(0, 1.2),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.green,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Lorem ipsum is simply dummy text",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "2 Day Ago",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            "Thers are manyvaraiations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form",
                            maxLines: 2,
                            style: TextStyle(
                                height: 1.5, color: Colors.grey, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: IconWidget(),
                  ),
                  const Divider(
                    color: Colors.black,
                    indent: 20, // empty space to the leading edge of divider.
                    endIndent: 20,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Icon(
                              Icons.emoji_emotions,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Center(
                              child: Icon(
                            Icons.settings,
                          )),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GroupVedioCallScreen()));
                              },
                              icon: Icon(
                                Icons.forward,
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xFF8AFFD3),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              "Travel",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF42AA82)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color(0xFF8AFFD3),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              "Trip",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF42AA82)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black12,
                    indent: 20, // empty space to the leading edge of divider.
                    endIndent: 20,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Comments",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("Sortby")
                      ],
                    ),
                  ),
                  MainWidgetComment(
                    image: "assets/chatimage.png",
                    text: "Dorothy",
                    secondtext:
                        "Lorem ipsum is simply dummy text of the\n printing and typesetting industry.",
                    linktext: "@Trip",
                    fourthtext: "09:25AM",
                    thirdtext: "Like",
                    replytext: "Reply",
                    timetext: "2minutes ago",
                  ),
                  MainWidgetComment(
                    image: "assets/chatimage3.png",
                    text: "Jacob Arnold",
                    secondtext:
                        "Contary to popular belief,Lorem ipsum is \n not simply random text.It has roots in a\n piece of classical latin",
                    linktext: "@Literature",
                    fourthtext: "09:25AM",
                    afterlinktext: "from \n45BC making it over 2000 years old",
                    thirdtext: "Like",
                    replytext: "Reply",
                  )
                ]),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white12,
                suffixIcon: const Icon(
                  Icons.emoji_emotions,
                ),
                hintText: "write a comment",
                prefixIcon: Icon(Icons.edit),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xFF707070),
                  ),
                  borderRadius: BorderRadius.circular(55),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
