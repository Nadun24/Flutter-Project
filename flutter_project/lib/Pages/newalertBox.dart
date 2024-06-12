import 'package:flutter/material.dart';

class NewAlertBox extends StatelessWidget {
  const NewAlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => CustomDialogWidget(),
            );
          },
          child: Text("custom pop up"),
        ),
      ),
    );
  }
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      //shape: RoundedRectangleBorder(),
      child: Container(
        width: 271,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                width: 271,
                height: 52,
               
                child: Row(
                  children: [
                    SizedBox(
                      width: 140,
                      height: 52,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffEFF2F4),
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.clear, color: Colors.black,),
                            SizedBox(width: 4,),
                            Text("No",style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      height: 52,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check, color: Colors.white,),
                            SizedBox(width: 4,),
                            Text("Yes",style: TextStyle(color: Color(0xffFEFEFE)),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.asset('assets/alertBox.png'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "You are on Low Balance",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffEB3243),
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      width: 239,
                      height: 0.75,
                      decoration: BoxDecoration(
                        color: Color(0xffCED4DA),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "You can’t ride because your wallet balance is below the limit. Add money to wallet now to continue using the app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6C757D),
                        ),
                      ),
                    ),
                    SizedBox(height: 52),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
