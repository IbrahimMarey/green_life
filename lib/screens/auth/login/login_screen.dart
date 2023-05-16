import 'package:flutter/material.dart';
import 'package:green_life/screens/Home/main_screen.dart';
import 'package:green_life/screens/auth/register/register_screen.dart';
import 'package:green_life/sheard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                height: 128,
              ),
              sharedText(txt: 'Login to your Account', fontSize: 22),
              formFiled(hint: 'email'),
              formFiled(hint: 'password', passwordHide: true),
              sharedBtn(
                txt: 'Login',
                radius: 18,
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen(),));
                },
              ),
              SizedBox(
                height: 32,
              ),
              Center(child: sharedText(txt: 'or sign in with')),
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
                      child: Image.asset('assets/google.png',
                        width: 20,
                        height: 25,
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
                        Icons.facebook,
                        color: Color(0xff0000FF),
                        size: 48,
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
                    size: 48,
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
                    sharedText(txt: "Don't have an Account?"),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ));
                        },
                        child: sharedText(txt: 'Sign Up', color: kPrimaryColor)),
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
