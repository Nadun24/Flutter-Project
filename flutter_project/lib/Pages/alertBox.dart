import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBox extends StatefulWidget {
  const AlertBox({super.key});

  @override
  State<AlertBox> createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 200,
          height: 400,
          
          child: Column(children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset("assets/alertBox.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                width: 239,
                height: 1,
                decoration: BoxDecoration(
                  color: Color(0xffCED4DA),
                ),
              ),
            ),
            Text(
              "You can’t ride because your wallet balance is below the limit. Add money to wallet now to continue using the app.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff6C757D),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffEFF2F4),
                            foregroundColor: Color(0xff132026),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                child: Image.asset("assets/Left.png")),
                            Text("No"),
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Color(0xffEFF2F4),
                            backgroundColor: Color(0xff132026),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                child: Image.asset("assets/Right.png")),
                            Text("Yes"),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
