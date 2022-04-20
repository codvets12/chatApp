import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/src/provider.dart';

import '../provider/auth_provider/auth_provider.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({Key? key}) : super(key: key);

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    context.read<AuthProvider>().splashInit(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Group 3020.png"),
                  fit: BoxFit.cover)),
        ),
        Center(
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Column(
                children: [
                  Image(image: AssetImage("assets/splash1.png")),
                  Image(image: AssetImage("assets/BestiTOO.png"))
                ],
              ),
            ),
          ),
        ),
        const Align(
          alignment: Alignment(0.65, 0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/splash3.png"),
          ),
        ),
        const Align(
          alignment: Alignment(0.2, -0.35),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/splash5.png"),
          ),
        ),
        const Align(
          alignment: Alignment(-0.6, -0.1),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/splash2.png"),
          ),
        ),
        const Align(
          alignment: Alignment(-0.1, 0.33),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/splash4.png"),
          ),
        ),
        Align(
          alignment: Alignment(0, 0.35),
          child: ClipRRect(
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white12,
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
      ],
    );
  }
}
