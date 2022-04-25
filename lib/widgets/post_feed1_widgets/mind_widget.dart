import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper.dart';

class YourMind extends StatelessWidget {
  String? image;
  String? text;
  String? friendtext;
  String? posttext;
  String? tagtext;
  final IconData? icon;
  final IconData? Friendicon;
  final IconData? Posticon;
  final IconData? Tagicon;
  Color? color;

  YourMind(
      {Key? key,
      this.image,
      this.color,
      this.friendtext,
      this.posttext,
      this.tagtext,
      this.Friendicon,
      this.Posticon,
      this.Tagicon,
      this.icon,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: getHeight(context) * 0.2,
        width: getWidth(context) * 46,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFF0EFEFEF))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(image!),
                  ),
                  Text(
                    text!,
                    style: TextStyle(fontSize: 15),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFFECECEC),
                    radius: 10,
                    child: Icon(icon),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFFBCDBFF),
                        border: Border.all(color: Color(0x707070)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Friendicon,
                              color: Colors.black,
                            ),
                          ),
                          Text(friendtext!)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFFFEE9D4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Posticon,
                              color: Colors.black,
                            ),
                          ),
                          Text(posttext!)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFD2FFEE),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Tagicon,
                              color: Colors.black,
                            ),
                          ),
                          Text(tagtext!)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
