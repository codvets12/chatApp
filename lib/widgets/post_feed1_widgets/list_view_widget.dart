import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({Key? key}) : super(key: key);
  List images = ['assets/image1.png', 'assets/image2.png', 'assets/image3.png'];
  List text = ['21 mutual friends', '06 mutual friends', '02 mutual friends'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 42.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              // mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 35,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black45,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                      child: Text(
                                    text[index],
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 5,
                      right: 55,
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6,
                                  color: Colors.black12,
                                  spreadRadius: 0)
                            ]),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                ))),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "Jennifer Leah",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Christopher",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Gordon",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
