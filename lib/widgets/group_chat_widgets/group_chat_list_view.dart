import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupChatList extends StatelessWidget {
  GroupChatList({Key? key}) : super(key: key);
  List imagess = [
    'assets/groupchat4.png',
    'assets/groupchat5.png'
        'assets/groupchat1.png',
    'assets/groupchat2.png',
    'assets/groupchat3.png',
  ];
  List text = ['2', '4', '', '4', '4'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: imagess.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(imagess[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 10,
                  right: 30,
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              color: Colors.black12,
                              spreadRadius: 0)
                        ]),
                    child: CircleAvatar(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Center(
                        child: Text(text[index]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
