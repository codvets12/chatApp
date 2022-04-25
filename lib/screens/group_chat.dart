import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper.dart';
import '../widgets/group_chat_widgets/group_chat_list_view.dart';
import '../widgets/group_chat_widgets/message_widget.dart';
import 'comment_reply.dart';

class GroupChatScreen extends StatelessWidget {
  const GroupChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              )),
                          Column(
                            children: [
                              Text("Group Chat Name"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("64 friends online")
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.notification_add))),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.search))),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CommentReplyScreen()));
                                  },
                                  icon: Icon(Icons.settings))),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notification_add)),
                          )
                        ],
                      ),
                    ),
                    GroupChatList(),
                    Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    MessageWidget(
                      issender: true,
                      image: "assets/chatimage.png",
                      text: "Dorothy",
                      text2: "Good morning have a nice day",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: [Text("May 27,09:03 AM"), Icon(Icons.check)],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MessageWidget(
                      // issender: true,
                      image: "assets/circle.png",
                      text: "Jonathan",
                      text2: "Lorem ipsum you need",
                      text3: "data",
                      icon: Icons.emoji_emotions,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text("May 27,09:03 AM")],
                      ),
                    ),
                    MessageWidget(
                      image: "assets/circle.png",
                      text: "Jasmine",
                      text2: "Lorem ipsum is simply dummy",
                      issender: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: [Text("May 27,09:03 AM"), Icon(Icons.check)],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Jonathan"),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                height: getHeight(context) * 0.23,
                                width: getWidth(context) * 0.85,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/vedio image.png"),
                                        fit: BoxFit.cover)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 8),
                                      child: Container(
                                        width: 110,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.black45,
                                            border: Border.all(
                                              color: const Color(0xFF707070),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.remove_red_eye,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "92 views",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: CircleAvatar(
                                                backgroundColor: Colors.white54,
                                                child: Icon(
                                                  Icons.stop,
                                                  color: Colors.white,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "02:00",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Flexible(
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/Play.png"))),
                                          Text(
                                            "04:50",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.fullscreen,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/circle.png"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 10),
                      child: Row(
                        children: [Text("May 27,09:03 AM"), Icon(Icons.check)],
                      ),
                    ),
                    MessageWidget(
                      image: "assets/circle.png",
                      text: "Hardacre Gill",
                      text2: "it is long established fact that",
                      text3: "a reader will ",
                      favicon: Icons.favorite,
                      icon: Icons.emoji_emotions,
                      issender: true,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Button"))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white12,
                  suffixIcon: Icon(
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
      ),
    );
  }
}
