import 'package:discordapp/homepage.dart';
import 'package:discordapp/my_button.dart';
import 'package:discordapp/my_textfield.dart';
import 'package:discordapp/signup.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
   MyLogin({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
   final _formKey = GlobalKey<FormState>();

   TextEditingController _emailController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();


  //login method
   void logUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        const SizedBox(height:50),
        Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/img_6.png',// Reduce the size of the Flutter logo
          ),
        ),

        const SizedBox(height:100),
         //username textfield

        Padding(
          padding:  EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _emailController,
            obscureText: false,
            decoration: InputDecoration(
              labelText: "Mobile number or email",

              labelStyle:  TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              filled: true,
              fillColor: Colors.grey[200],
              suffixIcon: Icon(
                Icons.remove_red_eye, // Password hide/show icon
              ),
              // Changed background color

            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email address';
              }
              // You can add more complex password validation logic here if needed
              return null;
            },


          ),


        ),







        Padding(
          padding:  EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
            labelText: "Password",

            labelStyle:  TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            filled: true,
            fillColor: Colors.grey[200],
            suffixIcon: Icon(
              Icons.remove_red_eye, // Password hide/show icon
            ),
            // Changed background color

          ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              // You can add more complex password validation logic here if needed
              return null;
            },


          ),


        ),






        const SizedBox(height:5),



        Text('Forgot Password?',
          style: TextStyle(color: Colors.grey[700],
              fontSize: 15, fontWeight: FontWeight.bold), ),

        const SizedBox(height:1),

        Padding(
          padding: EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>HomePage()));

              // Define the action when the "Login" button is pressed
            },
            child: Text(
              "Log In",
              style: TextStyle(fontSize: 25, ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(300, 40),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            ),
          ),
        ),



        const SizedBox(height:10),
        Row(
          children: [
            Expanded(
              child:Divider(thickness: 0.9,
                color: Colors.grey[400],
              ) ,
            ),

            Text('Or Continue with',
              style: TextStyle(color: Colors.grey[700]),),
            Expanded(
              child:Divider(thickness: 0.9,
                color: Colors.grey[400],
              ) ,
            ), ],


        ),


        Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0), // Add padding for spacing
                child: InkWell(
                  onTap: () {
                    // Login with Google action
                  },
                  child: Image.asset(
                    'assets/img.png', // Replace with the actual Google logo asset
                    width: 30.0, // Reduce the width of the logo
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0), // Add padding for spacing
                child: InkWell(
                  onTap: () {
                    // Login with Facebook action
                  },
                  child: Image.asset(
                    'assets/img_1.png', // Replace with the actual Facebook logo asset
                    width: 30.0, // Reduce the width of the logo
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0), // Add padding for spacing
                child: InkWell(
                  onTap: () {
                    // Login with instagram action
                  },
                  child: Image.asset(
                    'assets/img_2.png', // Replace with the actual instagram logo asset
                    width: 30.0, // Reduce the width of the logo
                  ),
                ),
              ),

            ],
          ),
        ),
        const SizedBox(height:10),
        Row(
          children: <Widget>[
            const Text('Does not have account?'),
            InkWell(
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.blue,
                    fontSize: 17, fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SignUp()));
              },

            )
            ],
              mainAxisAlignment: MainAxisAlignment.center,),


   ] ,),











      );

   }
  }




