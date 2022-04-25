import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper.dart';

class Majorwidget extends StatelessWidget {
  bool? iscolumn;
  String? image;
  String? text;
  String? secondtext;
  String? thirdtext;
  String? fourthtext;
  IconData? icon;
  bool? Isicon = false;
  bool? iswidth = false;
  Color? circlecolor;
  bool? istext;
  IconData? firsticon;
  IconData? secondicon;
  IconData? thirdicon;
  Color? iconcolor;

  Majorwidget({
    Key? key,
    this.iscolumn,
    this.iconcolor,
    this.firsticon,
    this.secondicon,
    this.thirdicon,
    this.image,
    this.istext,
    this.circlecolor,
    this.text,
    this.secondtext,
    this.thirdtext,
    this.fourthtext,
    this.icon,
    this.Isicon,
    this.iswidth,
  }) : super(key: key);

  // IconButton? sndiconButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: getHeight(context) * 0.12,
              width: (iswidth != null)
                  ? getWidth(context) * 0.73
                  : getWidth(context) * 0.92,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(image!),
                          child: Align(
                            alignment: Alignment(1, 1.2),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: circlecolor!,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Text(
                                text ?? "",
                                style: const TextStyle(fontSize: 17),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 48.0),
                                child: Text(fourthtext ?? ""),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Flexible(
                          child: Row(
                            children: [
                              Icon(Icons.check),
                              Text(secondtext ?? ""),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            (istext != null)
                                ? Text(
                                    thirdtext ?? "",
                                    style: const TextStyle(
                                        color: Colors.blue, fontSize: 15),
                                  )
                                : Row(
                                    children: [
                                      Icon(
                                        firsticon,
                                        color: iconcolor,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(
                                        secondicon,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(
                                        thirdicon,
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 1,
        ),
        Padding(
            padding: const EdgeInsets.all(0.0),
            child: (Isicon != null)
                ? Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF8AFFD3),
                        child: IconButton(onPressed: () {}, icon: Icon(icon)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFFFEE9D4),
                        child: IconButton(onPressed: () {}, icon: Icon(icon)),
                      )
                    ],
                  )
                : SizedBox())
      ],
    );
  }
}
