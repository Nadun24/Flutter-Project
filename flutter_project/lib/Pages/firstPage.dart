import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/main.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEFF2F4),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight*0.27,
            left: 0,
            right: 0,
            child: Container(child: Image.asset('assets/Background.png')),
          ),
          Positioned(
            left: 16,
            top: 44,
            // right: 288,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                    ),
                );
              },
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                 child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: screenHeight*0.46,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                        "Happens to the best of us! Send your email and We'll help you."),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0, bottom: 112.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color(0xffEFF2F4),
                            border: OutlineInputBorder(),
                            hintText: 'Email Address',
                            suffixIcon: new Icon(Icons.mail)),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: double.maxFinite,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xffFBDC05),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                                      ),
                          onPressed: () {},
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 144.0, right: 144.0, bottom: 8.0),
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
    );
  }
}
