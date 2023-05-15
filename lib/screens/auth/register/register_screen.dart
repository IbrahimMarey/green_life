import 'package:flutter/material.dart';
import 'package:green_life/screens/Home/home_screen.dart';
import 'package:green_life/screens/auth/login/login_screen.dart';
import 'package:green_life/sheard.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 64,
              ),
              sharedText(txt: 'Create your Account', fontSize: 22),
              formFiled(hint: 'Name'),
              formFiled(hint: 'Email'),
              formFiled(hint: 'password', passwordHide: true),
              formFiled(hint: 'confirm password', passwordHide: true),
              sharedBtn(
                txt: 'Sign Up',
                radius: 18,
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                },
              ),
              SizedBox(
                height: 32,
              ),
              Center(child: sharedText(txt: 'or sign up with')),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: 75,
                      height: 55,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      child: Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 36,
                      )),
                  Container(
                    width: 75,
                    height: 55,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                    ),
                    child: Icon(
                      Icons.facebook,
                      color: Color(0xff0000FF),
                      size: 36,
                    ),),
                  Container(
                      width: 75,
                      height: 55,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      child: Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 36,
                      )),
                ],
              ),
              SizedBox(
                height: 64,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sharedText(txt: "have an Account?"),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: sharedText(txt: 'Login', color: kPrimaryColor)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
