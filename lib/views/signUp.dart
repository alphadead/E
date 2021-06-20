import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Sign Up"
                    .text
                    .xl5
                    .bold
                    .color(context.theme.accentColor)
                    .make()
                    .py12(),
                "Create your account".text.xl2.make().py12(),
                CupertinoFormSection(
                  header: "Personal Details".text.make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Name",
                      ),
                      prefix: "Name".text.make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Phone",
                      ),
                      prefix: "Phone".text.make(),
                    )
                  ],
                ),
                CupertinoFormSection(
                  header: "User".text.make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter email",
                      ),
                      prefix: "Email".text.make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        obscureText: true,
                      ),
                      prefix: "Password".text.make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        obscureText: true,
                      ),
                      prefix: "Confirm Password".text.make(),
                    ),
                  ],
                ),
                CupertinoFormSection(
                  header: "Terms & Conditions".text.make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoSwitch(
                        value: _lights,
                        onChanged: (bool value) {
                          setState(() {
                            _lights = value;
                          });
                        },
                      ),
                      prefix: "I Agree".text.make(),
                    ),
                  ],
                ),
                20.heightBox,
                Material(
                  color: context.theme.buttonColor,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ).centered(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
