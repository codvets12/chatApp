import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/buttons.dart';
import '../../screens/post_feed1.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  bool? iswhere;
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 25,
              decoration: const BoxDecoration(
                color: Colors.white10,
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                        color: Color(0xFF223D94),
                        width: 3.0,
                        style: BorderStyle.solid)),
                labelColor: Color(0xFF223D94),
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Container(
                    height: 200,
                    child: new Tab(
                      text: "LOGIN",
                    ),
                  ),
                  Container(
                    height: 200,
                    child: new Tab(
                      text: "REGISTER",
                    ),
                  )

                  // second tab [you can add an icon using the icon property]
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Welcome Back ',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text(
                                        "Mr.Jonathan Mills",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      GestureDetector(
                                        onDoubleTap: () {},
                                        child: const Text(
                                          "Change User",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/Logopic.png")),
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Align(
                                      alignment: const Alignment(0, 1.1),
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: FloatingActionButton(
                                          // mini: true,
                                          backgroundColor: Colors.white,
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.edit,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 3,
                                    color: Color(0xFFEBEBEB),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              )),
                            ),
                            //
                            // Buttons(bgcolor: Colors.blue, label: "Login Page")
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Buttons(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PostFeed1Screen()));
                                      },
                                      textcolor: Colors.white,
                                      bgcolor: const Color(0xFF223D94),
                                      label: "Login Now"),
                                  Buttons(
                                      onTap: () {
                                        print("object");
                                      },
                                      textcolor: const Color(0xFFD16F6F),
                                      bgcolor: const Color(0xFFFEE9D4),
                                      label: "Forget password")
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(children: const <Widget>[
                                Expanded(
                                    child: Divider(
                                  thickness: 1.5,
                                )),
                                Text("Or"),
                                Expanded(
                                    child: Divider(
                                  thickness: 1.5,
                                )),
                              ]),
                            ),
                            Buttons(
                                onTap: () {
                                  // Provider.of<MainProvider>(context,
                                  //         listen: false)
                                  //     .loginwithGoogle(context);
                                },
                                textcolor: const Color(0xFF575757),
                                iconColor: Colors.white,
                                color: const Color(0xFFF56E6E),
                                ischecked: false,
                                icon: Icons.chrome_reader_mode,
                                bgcolor: Colors.white,
                                label: "Login with google"),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Buttons(
                                textcolor: const Color(0xFF575757),
                                iconColor: Colors.white,
                                color: const Color(0xFF223D94),
                                ischecked: false,
                                icon: Icons.fingerprint,
                                bgcolor: Colors.white,
                                label: "Login Using Fingerprint",
                                onTap: () {
                                  print("finger print");
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          heightFactor: 2.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 50,
                            child: Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera)),
                            ),
                          ),
                        ),
                        TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 3,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: "Name")),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 3,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: "Password")),
                        SizedBox(
                          height: 5,
                        ),
                        Buttons(
                            onTap: () {},
                            bgcolor: Colors.black,
                            label: "Register")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
