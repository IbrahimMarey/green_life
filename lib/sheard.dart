import 'package:flutter/material.dart';
import 'package:green_life/models/slider_model.dart';

const Color kPrimaryColor = Color(0xff008F55);

Widget sharedBtn(
    {required String txt,
     double radius= 18,
    required VoidCallback onTap}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: kPrimaryColor,
    ),
    child: MaterialButton(
      onPressed: onTap,
      child: Text(
        txt,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ),
  );
}

Widget formFiled({
  required String hint,
  TextEditingController? controller,
  bool passwordHide = false,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: TextFormField(
      controller: controller,
      obscureText: passwordHide,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: kPrimaryColor)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: kPrimaryColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: kPrimaryColor)),
      ),
    ),
  );
}
Widget listTile({
  required String txt,
  required IconData leadingIcon,
  required IconData trailingIcon,
  required VoidCallback onTap,
}){
  return Column(
    children: [
      ListTile(
        leading: Icon(leadingIcon,color: kPrimaryColor,),
        trailing:Icon(trailingIcon,color: kPrimaryColor,) ,
        title: Text(txt),
        onTap: onTap,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Divider(),
      ),
    ],
  );
}
Widget sharedText({
  required String txt,
  double fontSize = 16,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.w600,
}) {
  return Text(
    txt,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

List<SliderModel> sliderList = [
  SliderModel(
      title: 'Find RVM Places',
      description: 'Our Recycling map will help you finding',
      image: 'assets/location.png'),
  SliderModel(
      title: 'Find RVM Places',
      description: 'Our Recycling map will help you finding',
      image: 'assets/wm.png'),
  SliderModel(
      title: 'Find RVM Places',
      description: 'Our Recycling map will help you finding',
      image: 'assets/qrcode.png'),
];
