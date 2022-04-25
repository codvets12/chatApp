import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  String? text;
  String? text2;
  String? text3;
  bool? issender;
  IconData? icon;
  IconData? favicon;
  String? image;
  MessageWidget(
      {Key? key,
      this.issender,
      this.text,
      this.text2,
      this.icon,
      this.image,
      this.favicon,
      this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      (issender != null
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image!),
                  child: Align(
                    alignment: Alignment(0, 1.5),
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                Container(
                    width: 250,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(text ?? ""),
                              Text(text2 ?? ""),
                              Row(
                                children: [
                                  Text(text3 ?? ""),
                                  Icon(
                                    icon,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    favicon,
                                    color: Colors.red,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color(0xFF223D94),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              text ?? "",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              text2 ?? "",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  icon,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  favicon,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  text3 ?? "",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(image!),
                  child: Align(
                    alignment: Alignment(0, 1.5),
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green,
                    ),
                  ),
                )
              ],
            ))
    ]);
  }
}
