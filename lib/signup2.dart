import 'package:discordapp/newpage.dart';
import 'package:discordapp/signup.dart';
import 'package:flutter/material.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  TextEditingController _ageController = TextEditingController();





  String selectedGender = 'Male'; // Default selection

  // Function to handle gender selection
  Future<void> handleGenderSelection(String value) async {
    setState(() {
      selectedGender = value  ?? 'Male';
    });
  }
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:
        IconButton(onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => SignUp()));
        },


            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          Center(
            child: Text(
              'SignUp',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Choose Your Profile Picture:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.right,
                ),


                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},

                        child: Container(
                          padding: EdgeInsets.all(14),
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('Choose from Gallery',
                            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                Text(
                  'Select Your date of birth:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.right,
                ),



                RadioListTile(
                  title: Text('Male'),
                  value: 'Male',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Female'),
                  value: 'Female',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                SizedBox(height: 20),





                Text(
                  'Select Your date of birth:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () => _selectDate(context),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('Select Date',
                            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Age',
                      fillColor: Colors.black , ),
                  ),
                ),











              ],
            ),
          ),

          const SizedBox(height: 70),



          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SignUp()));

                },

                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('Back',
                    style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),

                  ),),),
              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => NewPage()));


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
