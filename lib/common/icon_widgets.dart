import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: const [
          Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.emoji_emotions,
            color: Colors.yellow,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.wallet_travel),
          SizedBox(
            width: 5,
          ),
          Text(
            "1256",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 110,
          ),
          Icon(Icons.search),
          Text(
            "166 comments",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
