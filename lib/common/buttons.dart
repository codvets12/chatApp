import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../helper.dart';

class Buttons extends StatelessWidget {
  Buttons(
      {Key? key,
      //required this.size,
      required this.onTap,
      required this.bgcolor,
      this.borderRadius,
      this.textcolor,
      this.icon,
      this.color,
      this.iconColor,
      required this.label,
      this.ischecked})
      : super(key: key);
  final String label;

  IconData? icon;
  final Color bgcolor;
  bool? ischecked;
  Color? color;
  Color? textcolor;
  Color? iconColor;
  final void Function() onTap;
  // double size;
  BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: (ischecked != null)
            ? Container(
                height: getHeight(context) * 0.07,
                // 50,
                width: getWidth(context) * 55,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color(0xFFEBEBEB),
                  width: 3,
                )),
                //  490,

                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          label,
                          style: TextStyle(fontSize: 16, color: textcolor),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        height: 50,
                        width: 60,
                        child: Icon(
                          icon,
                          color: iconColor,
                        ),
                      )
                    ],
                  ),
                  onTap: onTap,
                ),
              )
            : Container(
                decoration: BoxDecoration(
                    color: bgcolor, borderRadius: BorderRadius.circular(15)),
                height: getHeight(context) * 0.09,
                width: getWidth(context) * 0.37,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: bgcolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        label,
                        style: TextStyle(color: textcolor, fontSize: 16),
                      ),
                    ))));
  }
}
