import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper.dart';

class MainWidgetComment extends StatelessWidget {
  String? image;
  String? text;
  String? linktext;
  String? secondtext;
  String? thirdtext;
  String? fourthtext;
  String? replytext;
  String? afterlinktext;
  String? timetext;

  MainWidgetComment({
    Key? key,
    this.afterlinktext,
    this.replytext,
    this.timetext,
    this.linktext,
    this.image,
    this.text,
    this.secondtext,
    this.thirdtext,
    this.fourthtext,
  }) : super(key: key);

  // IconButton? sndiconButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(image!),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    text ?? "",
                    style: const TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(fourthtext ?? "")
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  // Text(secondtext ?? ""),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: secondtext ?? "", style: TextStyle(height: 1.5)),
                    TextSpan(
                        text: linktext ?? "",
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text: afterlinktext ?? "",
                        style: TextStyle(height: 1.5))
                  ]))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      thirdtext ?? "",
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      replytext ?? "",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      timetext ?? "",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
