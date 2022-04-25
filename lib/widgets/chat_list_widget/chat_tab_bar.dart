import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../helper.dart';
import '../../screens/group_chat.dart';
import 'major_widget.dart';

class ChatTabBar extends StatefulWidget {
  const ChatTabBar({Key? key}) : super(key: key);

  @override
  State<ChatTabBar> createState() => _ChatTabBarState();
}

class _ChatTabBarState extends State<ChatTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          // give the tab bar a height [can change hheight to preferred height]
          Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white10,
            ),
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                      color: Colors.blue,
                      width: 3.0,
                      style: BorderStyle.solid)),
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs: [
                // first tab [you can add an icon using the icon property]
                Container(
                  child: new Tab(
                    text: "Post/Feed",
                  ),
                ),

                Container(
                  child: new Tab(
                    text: "BasicInfo",
                  ),
                ),
                Container(
                  child: new Tab(
                    text: "Friends",
                  ),
                ),
                Container(
                  child: new Tab(
                    text: "Chats",
                  ),
                ),
                Container(
                  child: new Tab(
                    text: "Groups",
                  ),
                ),
                Container(
                  child: new Tab(
                    text: "Archieve",
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "1568 Friends   -   256 mutual Friends",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Container(
                          height: getHeight(context) * 0.08,
                          width: getWidth(context) * 0.9,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Flexible(
                              child: Row(
                                children: [
                                  Text(
                                    "Contact/Chat List",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.call)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.search)),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.edit))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Majorwidget(
                        image: "assets/chatimage.png",
                        Isicon: true,
                        text: "Dorothy",
                        secondtext: "Lorem ipsum is simply dummy",
                        thirdtext: "#Alexender",
                        fourthtext: "10 Min Ago",
                        icon: Icons.phone,
                        iswidth: false,
                        circlecolor: Colors.grey,
                        istext: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Majorwidget(
                        //  iswidth: true,
                        image: "assets/chatimage1.png",
                        text: "Olivia Leah",
                        secondtext: "There are many variations of passngers",
                        fourthtext: "10 Min Ago",
                        circlecolor: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Majorwidget(
                        image: "assets/chatimage2.png",
                        text: "Edward",
                        secondtext: "Contrary to popular belief,Lorem ipsum",
                        fourthtext: "10 Min Ago",
                        circlecolor: Colors.grey,
                        firsticon: Icons.favorite,
                        secondicon: Icons.emoji_emotions,
                        thirdicon: Icons.gpp_good_sharp,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Majorwidget(
                        //  iswidth: true,
                        image: "assets/chatimage3.png",
                        text: "Jacob Arnold",
                        secondtext: "There are many variations of passngers",
                        fourthtext: "10 Min Ago",
                        circlecolor: Colors.green,
                        secondicon: Icons.emoji_emotions,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Majorwidget(
                        //  iswidth: true,
                        image: "assets/chatimage4.png",
                        text: "Dominic",
                        secondtext: "very popular during the Resaissance",
                        fourthtext: "10 Min Ago",
                        circlecolor: Colors.green,
                        istext: false,
                        thirdtext: "#Alexender   #Darthy",
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GroupChatScreen()));
                          },
                          child: Text("Button"))
                    ],
                  ),
                ),
              ),
              Center(
                child: Text("data"),
              ),
              Center(
                child: Text("data"),
              ),
              Center(
                child: Text("data"),
              ),
              Center(
                child: Text("data"),
              ),
              Center(
                child: Text("data"),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
