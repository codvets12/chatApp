import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 7),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                  decoration: InputDecoration(
                hintText: "write a comment..",
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(Icons.emoji_emotions),
                ),
                prefixIcon: Image(
                  image: AssetImage('assets/textfield.png'),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xFFEBEBEB),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              )),
            ),
            const SizedBox(
              width: 4,
            ),
            const CircleAvatar(
              backgroundColor: Color(0xFFF5F5F5),
              child: Center(
                child: Icon(Icons.emoji_emotions),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            const CircleAvatar(
              backgroundColor: Color(0xFFF5F5F5),
              child: Center(
                child: Icon(Icons.emoji_emotions),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            const CircleAvatar(
              backgroundColor: Color(0xFFF5F5F5),
              child: Center(
                child: Icon(Icons.emoji_emotions),
              ),
            )
          ],
        ),
      ),
    );
  }
}
