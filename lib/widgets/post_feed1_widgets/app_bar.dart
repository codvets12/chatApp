import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/group_chat.dart';

class CustomAppbar extends StatelessWidget {
  final String? text;
  final IconData? Notificationicon;
  final IconData? Settingicon;
  final IconData? Searchicon;
  final IconData? Clockicon;
  bool? iscolor;
  bool? ischecked;

  CustomAppbar(
      {Key? key,
      this.text,
      this.Notificationicon,
      this.Settingicon,
      this.Searchicon,
      this.Clockicon,
      this.ischecked,
      this.iscolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: (ischecked != null)
                ? Text(
                    text ?? "",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )
                : CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    )),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Clockicon,
                  color: (iscolor != null) ? Colors.black : Colors.white,
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Notificationicon,
                  color: (iscolor != null) ? Colors.black : Colors.white,
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GroupChatScreen()));
                },
                icon: Icon(
                  Settingicon,
                  color: (iscolor != null) ? Colors.black : Colors.white,
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Searchicon,
                  color: (iscolor != null) ? Colors.black : Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
