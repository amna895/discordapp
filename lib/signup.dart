import 'package:discordapp/my_button.dart';
import 'package:discordapp/signup2.dart';

import 'package:flutter/material.dart';

import 'login.dart';
import 'my_textfield.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _firstNameController = TextEditingController();

  get passwordController => null;

  get usernameController => null;
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:
        IconButton(onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => MyLogin()));
        },


            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)),
      ),
      body: Column(children: [


        const SizedBox(height: 10),

        Text('SignUp',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 50),

        Padding(
          padding: const EdgeInsets.all(20),
          child:TextFormField(
            controller: _firstNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your First Name';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "First Name",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),



        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "last Name",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              filled: true,
              fillColor: Colors.grey[200], // Changed background color

            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "+92*********",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              filled: true,
              fillColor: Colors.grey[200], // Changed background color

            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              filled: true,
              fillColor: Colors.grey[200], // Changed background color

            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Confirm Password",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              filled: true,
              fillColor: Colors.grey[100], // Changed background color

            ),
          ),
        ),



        const SizedBox(height: 40),


        Row(

         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           ElevatedButton(
             onPressed: () {},

             child: Container(
               padding: EdgeInsets.all(15),
               margin: EdgeInsets.symmetric(horizontal: 15),
               decoration: BoxDecoration(color: Colors.blue,
                   borderRadius: BorderRadius.circular(20)),
               child: Text('Save',
                 style: TextStyle(color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 18,

                 ),

               ),),),
           const SizedBox(height: 10),

           ElevatedButton(
             onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Signup2()));


             },

             child: Container(


               padding: EdgeInsets.all(15),
               margin: EdgeInsets.symmetric(horizontal: 15),
               decoration: BoxDecoration(color: Colors.blue,
                   borderRadius: BorderRadius.circular(30),
               ),
               child: Text('Next',
                 style: TextStyle(color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 18,

                 ),

               ),
             ),
           ),
         ],
       ),
       ],
      ),
    );
  }
}







