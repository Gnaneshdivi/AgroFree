import 'package:agro/Dashboard/Dashboard.dart';
import 'package:agro/home/widgets/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Color text1 = Color.fromRGBO(79, 119, 45, 1);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            Container(
              height: height * 0.1,
              child: Align(
                  child: Image.asset('assets/Logo.png', height: height * 0.1),
                  alignment: Alignment.centerLeft),
            ),
            SizedBox(height: height * 0.01),
            Container(
              alignment: Alignment.topCenter,
              width: width * 0.8,
              padding: EdgeInsets.only(left: width * 0.03),
              height: height * 0.1,
              child: Text(
                'SIGNIN HERE WITH US!',
                style: TextStyle(
                    fontSize: height * 0.03,
                    color: text1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: width * 0.03),
                width: width * 0.8,
                child: TextField(
                    keyboardType: TextInputType.phone,
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'MOBILE NUMBER',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.04),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: text1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ))),
            SizedBox(height: height * 0.04),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: width * 0.03),
                width: width * 0.8,
                child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'PASSWORD',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.04),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: text1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ))),
            SizedBox(height: height * 0.01),
            Container(
              width: width * 0.8,
              alignment: Alignment.topLeft,
              height: height * 0.05,
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: null),
                  Text(
                    'Remember Me',
                  ),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(color: text1),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => Dashboard(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 2),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: text1,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 243, 147, 0.8),
                    border: Border.all(
                      width: 2,
                      style: BorderStyle.solid,
                      color: text1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: height * 0.06,
                width: width * 0.8,
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(bottom: height * 0.01),
              width: width * 0.8,
              child: Text(
                'Not Yet Joined With Us!',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => Signup(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 2),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                      color: text1,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 243, 147, 0.8),
                    border: Border.all(
                      width: 2,
                      style: BorderStyle.solid,
                      color: text1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: height * 0.06,
                width: width * 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
