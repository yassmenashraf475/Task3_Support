import 'package:flutter/material.dart';

Widget defaultFormField({required TextEditingController controller,
  required TextInputType type,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  bool isPassword = false,
  Function? suffixPressed,

}) =>Container(
  height: 50,
  child:   TextFormField(

    obscureText: isPassword,

    controller: controller,

    keyboardType: type,

    decoration: InputDecoration(

      labelText: label,

      labelStyle: TextStyle(color: Colors.grey[500]),

      prefixIcon: Icon(

        prefix,

        color: Colors.orange[800],

      ),

      suffixIcon:suffix != null ? IconButton(

        onPressed: () {

          suffixPressed!();

        } ,

        icon: Icon(

          suffix,

        ),

      ):null,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.white10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey, // Border color when focused
        ),
      ),
      filled: true,
      fillColor: Colors.white,
    ),

    validator:(s) {

      return validate(s);

    },

  ),
);



Widget defaultButton({
  double width = double.infinity,
  required Function function,
  required String text,
  double radius =20.0,
  Color colorText =Colors.white,
  required Color colorButton ,
   double height= 50.0,

}) => Container(
  height: height,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: colorButton,
  ),
  width: width,
  child: MaterialButton(
    onPressed: (){
      function();
    },
    child: Text( text,
      style: TextStyle(
        color: colorText ,
        fontWeight: FontWeight.bold
      ),
    ),
  ),
);



