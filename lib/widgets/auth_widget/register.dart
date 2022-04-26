import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/buttons.dart';
import '../../provider/auth_provider/auth_provider.dart';

class RegisterTab extends StatefulWidget {
  const RegisterTab({Key? key}) : super(key: key);

  @override
  State<RegisterTab> createState() => _RegisterTabState();
}

class _RegisterTabState extends State<RegisterTab> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  final reg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Name"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      "Name cannot be empty";
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "email"),
                  validator: (val) {
                    if (reg.hasMatch(val!)) {
                      "Invalid email";
                    }
                    ;
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "password"),
                  validator: (val) {
                    if (val!.length < 6) {
                      "password in tooshort";
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Buttons(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        Provider.of<AuthProvider>(context, listen: false)
                            .register(context,
                                name: namecontroller.text,
                                email: emailController.text,
                                password: passwordController.text);
                      }
                    },
                    bgcolor: const Color(0xFFFEE9D4),
                    textcolor: const Color(0xFFD16F6F),
                    label: "Register")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
