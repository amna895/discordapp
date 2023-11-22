import 'package:flutter/material.dart';
 class MyTextField extends StatelessWidget {
   final controller;
   final String hintText;
   final bool obsecureText;



   const MyTextField(  {
     super.key,
     required this.controller,
     required this.hintText,
     required this.obsecureText,
     });
 
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal:25.0 ),
       child: TextField(
         controller: controller,
         obscureText: obsecureText,
           cursorRadius: Radius.circular(80),


         decoration: InputDecoration(
           labelText: "Mobile number or Email Address",
           labelStyle: TextStyle(fontWeight: FontWeight.bold),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(12),
           ),
           contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
           filled: true,
           fillColor: Colors.grey[200],
           suffixIcon: Icon(
             Icons.remove_red_eye, // Password hide/show icon
           ),// Changed background color

         ),




         ),



         );





   }
 }
 