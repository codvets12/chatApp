import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper.dart';
import '../widgets/chat_list_widget/chat_tab_bar.dart';
import '../widgets/post_feed1_widgets/app_bar.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getHeight(context) * 0.4,
            width: getWidth(context) * double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/Post.png',
                    ),
                    fit: BoxFit.cover),
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(60))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppbar(
                        Notificationicon: Icons.notification_add,
                        Settingicon: Icons.settings,
                        Searchicon: Icons.search,
                        Clockicon: Icons.lock_clock_sharp,
                      ),
                      Container(
                        height: getHeight(context) * 0.08,
                        width: getWidth(context) * 0.55,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.camera)),
                            const Text(
                              "Change Cover Photo",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment(1, 1.8),
                    child: Container(
                      height: getHeight(context) * 0.15,
                      width: getWidth(context) * 0.27,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/chatscreen.png")),
                          borderRadius: BorderRadius.circular(15)),
                      child: Align(
                        alignment: Alignment(0.6, 0.5),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 15.0,
                                )),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "Jonathan Mills",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Flexible(child: ChatTabBar()),
        ],
      ),
    );
  }
}
