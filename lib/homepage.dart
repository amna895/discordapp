import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 370, // Set the width of the container
          height: 220, // Set the height of the container
          color: Colors.grey[350],


                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[ Image.asset(
                          'assets/img_9.png',
                              height: 80,width: 60,
                          ),
                              const SizedBox(height: 20,),

                              Center(
                                child: Text('Allow Discord To Access Your Contacts?',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                                    ),
                                    ),
                              )
                                 ]
                                ),
                        ),

                        const SizedBox(height: 80,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,

                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                              child: const Text('Deny',
                              style: TextStyle(color: Colors.blue,
                                 fontSize: 20, fontWeight: FontWeight.bold),),
                                 onTap: (){
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
                             },

                             ),

                              InkWell(
                                child: const Text('Allow',
                                  style: TextStyle(color: Colors.blue,
                                      fontSize: 20, fontWeight: FontWeight.bold),),
                                onTap: (){
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
                                },

                              ),




                            ]



                        )
                      ],
                    ),
                  ),
                ),
               );


















  }
}
