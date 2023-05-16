import 'package:flutter/material.dart';
import 'package:green_life/sheard.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back,color: kPrimaryColor,)),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  lineWidth: 1,
                  backgroundColor: kPrimaryColor,
                  radius: 51,
                  center: CircleAvatar(
                    radius: 49,
            backgroundImage: NetworkImage(
            "https://randomuser.me/api/portraits/men/47.jpg"
            ),),
                ),

                formFiled(hint: 'Name'),
                formFiled(hint: 'Gender'),
                formFiled(hint: 'Phone Number'),
                formFiled(hint: 'Email Address'),
                formFiled(hint: 'Address'),
                //formFiled(hint: 'Password'),
                SizedBox(height: 12,),
                sharedBtn(txt: 'Edit Profile', onTap: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
