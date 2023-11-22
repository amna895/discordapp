import 'dart:async';

import 'package:discordapp/login.dart';
import 'package:flutter/material.dart';


class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({super.key});

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {

  PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  final List<WalkthroughPage> pages = [

    WalkthroughPage(
      title: "Connect With Your Friends",
      description: "This is the first walkthrough screen.",
      image: "assets/img_12.png",
    ),

    WalkthroughPage(
      title: "Explore Features",
      description: "Learn about all the amazing features of our app.",
      image: "assets/img_10.png",
    ),
    WalkthroughPage(
      title: "Get Started",
      description: "Press the button below to start using the app.",
      image: "assets/img_11.png",
    ),
  ];

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const duration = const Duration(seconds: 3);
    Timer.periodic(duration, ( timer) {
      if (currentPage < pages.length - 1) {
        currentPage++;
      } else {
        timer.cancel();
      }
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(
        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [Color(0xFF33C295), Colors.white], // Dark green to white
        begin: Alignment(0.2, -0.2),
        end: Alignment(0.2, 0.2),
         ),
         ),


       child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: pages.length,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return WalkthroughPageWidget(
                  page: pages[index],
                  isLastPage: index == pages.length - 1,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pages.length, (index) {
              return Container(
                margin: EdgeInsets.all(5),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPage == index ? Colors.yellow : Colors.grey,
                ),
              );
            }),
          ),
          const SizedBox(height:30),


          // ... Your existing code

          ElevatedButton(

            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MyLogin()));
            },
            child: Text("GET STARTED",
            style: TextStyle(color: Colors.black),),
            onHover: update(),

            style: ElevatedButton.styleFrom(

              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              // Adjust padding as needed
              textStyle: TextStyle(fontSize: 18),primary: Colors.yellow



            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            // Add margin to move it above the bottom
          )

// ... More code

        ],
      ),
    ),),);
  }

  update() {}
}




class WalkthroughPage {
  final String title;
  final String description;
  final String image;

  WalkthroughPage({required this.title, required this.description, required this.image});
}

class WalkthroughPageWidget extends StatelessWidget {
  final WalkthroughPage page;
  final bool isLastPage;

  WalkthroughPageWidget({required this.page, required this.isLastPage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(),
            Image.asset(
              page.image,
              height: 400,

            ),
            const Spacer(),
            Text(
              page.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              page.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}