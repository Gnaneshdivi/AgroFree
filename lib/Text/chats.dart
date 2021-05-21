import 'package:agro/Text/newchat.dart';
import 'package:agro/veriable.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  bool swi = false;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.1),
          Container(
              padding: EdgeInsets.only(left: width * 0.03),
              width: width * 0.8,
              child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: !swi ? 'MESSAGES' : 'NEW MESSAGE',
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
          SizedBox(height: height * 0.05),
          Container(
            height: height * 0.6,
            width: width * 0.9,
            child: swi
                ? NewChat(
                    wid: width,
                    hei: height,
                  )
                : Center(
                    child: Text(
                      'No Messages To Show ',
                      style: TextStyle(color: green),
                    ),
                  ),
          ),
          Container(
              child: !swi
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              swi = true;
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: white,
                            )),
                            decoration: BoxDecoration(
                                color: darkgreen,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            height: width * 0.15,
                            width: width * 0.15,
                          ),
                        ),
                      ),
                    )
                  : null),
        ],
      ),
    );
  }
}
