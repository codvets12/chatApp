import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReUsable extends StatelessWidget {
  String? image;
  String? text;
  String? text2;
  IconData? icon;
  IconData? icon2;
  Color? iconcolor;
  bool? ischecked;
  ReUsable(
      {Key? key,
      this.ischecked,
      this.icon,
      this.icon2,
      this.image,
      this.text,
      this.text2,
      this.iconcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0.0),
        child: (ischecked != null)
            ? Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image!), fit: BoxFit.cover)),
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 100,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 13,
                                    child: Center(
                                      child: Text(text!),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(text2!)
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            icon,
                            color: iconcolor,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(icon2)],
                      ),
                    )
                  ],
                ))
            : Container(
                color: Colors.red,
              ));
  }
}
