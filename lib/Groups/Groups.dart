import 'package:agro/Groups/joined.dart';
import 'package:agro/veriable.dart';
import 'package:flutter/material.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  bool swi = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height,
        width: width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: height * 0.1),
          Container(
              padding: EdgeInsets.only(left: width * 0.03),
              width: width * 0.8,
              child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Groups',
                    hintStyle: TextStyle(
                        color: darkgreen,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ))),
          SizedBox(height: height * 0.03),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            swi = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: !swi ? darkgreen : green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: width * 0.1,
                          width: width * 0.3,
                          child: Center(
                              child: Text('Joined Groups',
                                  style: TextStyle(
                                      color: !swi ? white : darkgreen,
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            swi = true;
                          });
                        },
                        child: Container(
                          height: width * 0.1,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              color: swi ? darkgreen : green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              'Join Groups',
                              style: TextStyle(
                                  color: swi ? white : darkgreen,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.05),
              Container(
                height: height * 0.6,
                width: width * 0.9,
                child: swi
                    ? Joined(
                        wid: width,
                        hei: height,
                      )
                    : Center(
                        child: Text(
                          'No Groups To Show ',
                          style: TextStyle(color: green),
                        ),
                      ),
              ),
            ],
          )
        ]));
  }
}
