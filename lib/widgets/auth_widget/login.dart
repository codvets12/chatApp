import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/buttons.dart';
import '../../provider/auth_provider/auth_provider.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final reg = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final GlobalKey<FormState> _formkey = GlobalKey();
    return Scaffold(
      body: SingleChildScrollView(
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
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                fontSize: 16, fontWeight: FontWeight.w500),
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
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Logopic.png")),
                          borderRadius: BorderRadius.circular(15.0)),
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
                Form(
                  key: _formkey,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    //  controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xFFEBEBEB),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (val) {
                      if (val!.length < 6) {
                        "password is incorrect";
                      }
                      return null;
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    //  controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xFFEBEBEB),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (val) {
                      if (reg.hasMatch(val!)) {
                        "Email is incorrect";
                      }
                      return null;
                    },
                  ),
                ),
                //
                // Buttons(bgcolor: Colors.blue, label: "Login Page")
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Buttons(
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              Provider.of<AuthProvider>(context, listen: false)
                                  .Login(context,
                                      email: emailController.text,
                                      password: passwordController.text);
                            }
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
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                      Provider.of<AuthProvider>(context, listen: false)
                          .loginwithGoogle(context);
                    },
                    textcolor: const Color(0xFF575757),
                    iconColor: Colors.white,
                    color: const Color(0xFFF56E6E),
                    ischecked: false,
                    icon: Icons.chrome_reader_mode,
                    bgcolor: Colors.white,
                    label: "Login with google"),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Buttons(
                    textcolor: const Color(0xFF575757),
                    iconColor: Colors.white,
                    color: const Color(0xFF223D94),
                    ischecked: false,
                    icon: Icons.phone,
                    bgcolor: Colors.white,
                    label: "Login Using Phone number",
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
    );
  }
}
