import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../common/icon_widgets.dart';
import '../../common/text_field_widget.dart';
import '../../helper.dart';

class PostWidget extends StatelessWidget {
  PostWidget(
      {Key? key,
      this.circleimage,
      this.name,
      this.icon,
      this.daytext,
      this.timetext,
      this.posttext,
      this.image,
      this.isrow,
      this.linktext,
      this.icon2,
      this.icons2,
      this.isAlignment,
      this.viewsicons,
      this.viewstext})
      : super(key: key);
  String? circleimage;
  String? name;
  IconData? icon;
  String? daytext;
  String? timetext;
  String? posttext;
  String? image;
  IconData? icon2;
  String? viewstext;
  String? linktext;
  IconData? icons2;
  IconData? viewsicons;
  bool? isAlignment;
  bool? isrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: 380,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFEFEEEE)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 15),
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(circleimage!)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(icon),
                        SizedBox(
                          width: 8,
                        ),
                        Text(daytext ?? ""
                            // "Wednesday  -"
                            ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          timetext ?? "",
                          //   "18:40 PM"
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 130.0),
                      child: Icon(icon2),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (isrow != null)
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.headphones,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                      "Ready to watch amazing vedios friends.."),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 65,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF8AFFD3),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Center(
                                      child: Text("Movies"),
                                    ),
                                  ),
                                ],
                              ),
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text:
                                        "https://www.youtube.com/watch?v=TG9VZ17jnGk",
                                    style: TextStyle(color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        var url =
                                            "https://www.youtube.com/watch?v=TG9VZ17jnGk";
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      })
                              ]))
                            ],
                          )
                        : RichText(
                            text: TextSpan(children: [
                            TextSpan(
                                style: const TextStyle(color: Colors.black),
                                //  style: defaultText,
                                text: posttext ?? ""
                                //"lorem ipsum is simply dummy text of the printing \nand industry"
                                ),
                            TextSpan(
                                style: const TextStyle(color: Colors.blue),
                                //  style: linkText,
                                text: linktext ?? ""
                                //"   #Work from home  #office"
                                ,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    var url =
                                        "https://www.youtube.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber";
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  }),
                          ])),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
                height: getHeight(context) * 0.23,
                width: getWidth(context) * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(image!), fit: BoxFit.cover)),
                child: (isAlignment != null)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8),
                            child: Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  border: Border.all(
                                    color: const Color(0xFF707070),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      viewsicons,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      viewstext ?? "",
                                      //   "92 views",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8),
                            child: Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  border: Border.all(
                                    color: const Color(0xFF707070),
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      viewsicons,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      viewstext ?? "",
                                      //   "92 views",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10),
                            child: Row(
                              children: const [
                                CircleAvatar(
                                    backgroundColor: Colors.white54,
                                    child: Icon(
                                      Icons.stop,
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "02:00",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Flexible(
                                    child: Image(
                                        image: AssetImage("assets/Play.png"))),
                                Text(
                                  "04:50",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.fullscreen,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      )),
          ),
          const IconWidget(),
          const TextFieldWidget(),
        ],
      ),
    );
  }
}
