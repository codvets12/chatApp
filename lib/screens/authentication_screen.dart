import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper.dart';
import '../widgets/login_widget/custom_tabbar.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          heightFactor: 1.7,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/Logo.png"),
            child: Align(
              alignment: Alignment(0, 1.9),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(200),
                        bottomLeft: Radius.circular(200),
                      ),
                    ),
                    width: 200,
                    height: 100,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(child: CustomTabBar()),
      ],
    )
        // Stack(
        //   children: [
        //     const Center(
        //       heightFactor: 1.6,
        //       child: CircleAvatar(
        //         radius: 100,
        //         backgroundImage: AssetImage("assets/Logo.png"),
        //         //    backgroundImage: AssetImage("Logo.png"),
        //         backgroundColor: Colors.black,
        //       ),
        //     ),
        //     Align(
        //       alignment: const Alignment(0, 2),
        //       child: Container(
        //           decoration: const BoxDecoration(
        //               color: Colors.white,
        //               gradient: LinearGradient(
        //                   begin: Alignment.topLeft,
        //                   end: Alignment.topRight,
        //                   colors: [Colors.white, Colors.white10])),
        //           //  constraints: BoxConstraints.expand(height: 250.0),
        //           height: getHeight(context) * 0.8,
        //           width: getWidth(context),
        //           child: Padding(
        //             padding: const EdgeInsets.symmetric(vertical: 60.0),
        //             child: CustomTabBar(),
        //           )),
        //     )
        //   ],
        // ),
        );
  }
}
