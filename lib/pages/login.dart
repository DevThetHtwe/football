import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:football/pages/activate.dart';
import 'package:football/pages/utils.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = new TextEditingController();

  //
  @override
  void initState() {
    super.initState();
    flutterToast = FlutterToast(context);
  }

//
  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white38,
          brightness: Brightness.light,
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  logo(),
                  Container(
                    // elevation: 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.3,
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: IntlPhoneField(
                          controller: controller,
                          maxLength: 10,
                          showDropdownIcon: false,
                          initialCountryCode: 'MM',
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 8.0),
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                              hintText: 'Phone Number'),
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        controller.text.length != 10
                            ? _showToast()
                            : jumper(context, ActivateNow(controller.text));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  FlutterToast flutterToast;

  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.redAccent,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.info_outline, color: Colors.white),
        SizedBox(
          width: 12.0,
        ),
        Text(
          "You must fill a vaild phone number!",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );

  _showToast() {
    flutterToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );
  }
  //

  Widget logo() {
    return Container(
      padding: EdgeInsets.only(bottom: 50.0, top: 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: FlutterLogo(
          colors: Colors.green,
          size: 100,
        ),
        // Image.network(
        //   'https://pbs.twimg.com/profile_images/1057138054672969728/HM4TcYxQ_400x400.jpg',
        //   height: 100,
        //   width: 100,
        // ),
      ),
    );
  }
}
