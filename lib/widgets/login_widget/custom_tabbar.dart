import 'package:first_check/widgets/auth_widget/login.dart';
import 'package:first_check/widgets/auth_widget/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/buttons.dart';
import '../../provider/auth_provider/auth_provider.dart';
import '../../screens/post_feed1.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  bool? iswhere;
  TabController? _tabController;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  final reg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final GlobalKey<FormState> _formkey = GlobalKey();
  final GlobalKey<FormState> formkey = GlobalKey();

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
                children: const [LoginTab(), RegisterTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
