import 'package:agro/veriable.dart';
import 'package:flutter/material.dart';

class NewChat extends StatefulWidget {
  final hei;
  final wid;

  const NewChat({Key? key, this.hei, this.wid}) : super(key: key);
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    double height = widget.hei;
    double width = widget.wid;
    return Container(
      height: widget.hei * 0.6,
      width: widget.wid * 0.9,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            style: BorderStyle.solid,
            color: darkgreen,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          SizedBox(height: height * 0.02),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: width * 0.03),
              width: width * 0.8,
              child: TextField(
                  keyboardType: TextInputType.phone,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'To:',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Write A New Message',
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          SizedBox(
            height: height * 0.4,
          ),
          Container(
            height: height * 0.001,
            width: width * 0.8,
            color: green,
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Attachments',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Icon(
                Icons.photo_library_outlined,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.camera_alt, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.mic, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.sentiment_satisfied_outlined,
                    color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.send, color: Colors.grey),
              )
            ]),
          )
        ],
      ),
    );
  }
}
