import 'package:flutter/material.dart';
import 'package:football/pages/utils.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import './home.dart';

class ActivateNow extends StatefulWidget {
  ActivateNow(this.phone);
  final String phone;
  @override
  _ActivateNowState createState() => _ActivateNowState();
}

class _ActivateNowState extends State<ActivateNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 50,
                      ),
                      child: Text(
                        "Verification Code",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 28.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 50,
                      ),
                      child: new Text(
                        "Please enter the OTP sent\non your registered Phone Number.",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 30,
                        bottom: 20,
                      ),
                      child: PinInputTextField(
                        pinLength: 4,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: FlatButton(
                        color: Colors.green,
                        onPressed: () {
                          jumper(context, Home());
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
