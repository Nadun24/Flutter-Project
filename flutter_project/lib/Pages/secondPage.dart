import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // background image
            Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  "assets/MAP.png",
                  scale: 0.9,
                )),
            // menu icon container
            Positioned(
              top: 40,
              left: 16,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xffFEFEFE),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.menu),
              ),
            ),
            //notification icon container
            Positioned(
              right: 16,
              top: 40,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xffFEFEFE),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
            //bottom Container
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 435,
                decoration: BoxDecoration(
                    color: Color(
                      0xffFEFEFE,
                    ),
                    borderRadius: BorderRadius.circular(40),
                    border:
                        Border.all(color: Color.fromARGB(255, 224, 224, 224))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //small  container 
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffCED4DA),
                          ),
                        ),
                      ),
                      //first container row
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          width: double.maxFinite,
                          height: 88,
                          decoration: BoxDecoration(
                            color: Color(0xffFEFEFE),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color.fromARGB(255, 226, 226, 226),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // first container image
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 56,
                                      height: 56,
                                      child: Image.asset('assets/Driver.png'),
                                    ),
                                    // first container textfield
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child:
                                          //text field
                                          Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Chloe Jackson",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text("2 mins away"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //container field 29s
                                Container(
                                  width: 40,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "29s",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Second container
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffFEFEFE),
                              border: Border.all(
                                color: Color.fromARGB(255, 226, 226, 226),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: 
                                  // first row container
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      
                                      Row(
                                        
                                        children: [
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Center(
                                              child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                          ),
                                          //text field
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Pick Up",
                                                 style: TextStyle(
                                                      color: Color(0xff6C757D),
                                                    ),
                                                    ),
                                                Text(
                                                  "123 Spark Street, Birmingha..",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          width: 24,
                                          height: 24,
                                          child:
                                              Image.asset('assets/Vector.png')),
                                    ],
                                  ),
                                ),

                                // middle container
                                Container(
                                  width: 296,
                                  height: 0.75,
                                  color: Color(0xffCED4DA),
                                ),
                                //second  row
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      
                                      Row(
                                        children: [
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Center(
                                              child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                          ),
                                          //text field
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Drop Off",
                                                    style: TextStyle(
                                                      color: Color(0xff6C757D),
                                                    ),
                                                    ),
                                                Text(
                                                  "The Daily Grind Coffee Sho..",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          width: 24,
                                          height: 24,
                                          child:
                                              Image.asset('assets/Vector.png')),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          

                          Positioned(
                              top: 47,
                              left: 22,
                              child: Image.asset("assets/Arrow.png")),
                        ],
                      ),

                      /*Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                             Container(
                          
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xffEB3243),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: 
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 16),
                            child: Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset("assets/clear.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  Text(
                                    'Reject',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                          ),
                         ),
                          
                         Container(
                          
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xffFBDC05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: 
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 16),
                            child: Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset("assets/check.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  Text(
                                    'Accept',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                          ),
                         )
                          ],
                        ),
                      ),*/
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            SizedBox(
                              height: 56,
                              width: screenWidth*0.42,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffEB3243),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 24,
                                        height: 24,
                                        child: Image.asset("assets/clear.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Reject',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 16,),
                            SizedBox(
                              height: 56,
                              width: screenWidth*0.42,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffFBDC05),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 24,
                                        height: 24,
                                        child: Image.asset("assets/check.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Accept',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 18.0, left: 144.0, right: 144.0, bottom: 8.0),
                        child: Container(
                          width: 72,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Color(0xff132026),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
