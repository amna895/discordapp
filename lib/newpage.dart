import 'package:discordapp/login.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ Image.asset(
              'assets/img_7.png',
            ),

              const SizedBox(height: 50,),

              Text('You are now successfully connected!',
             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),

              Text('Try to login on your device',
              style: TextStyle( color:Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),
                ),
              const SizedBox(height: 40,),

              ElevatedButton(
                onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MyLogin()));


                },

                child: Container(


                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Text('Ok',
                    style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),

                  ),
                ),
              ),






            ],

          ),
        )




    );
  }
}
