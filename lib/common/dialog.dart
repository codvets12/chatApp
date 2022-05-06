import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        actions: [
          Container(
            height: 100,
            width: 100,
            child: Row(
              children: const [
                CircularProgressIndicator(
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Loading")
              ],
            ),
          )
        ],
      ),
    );
  }
}
