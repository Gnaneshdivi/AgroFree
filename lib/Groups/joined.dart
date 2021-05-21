import 'package:agro/veriable.dart';
import 'package:flutter/material.dart';

class Joined extends StatefulWidget {
  @override
  final hei;
  final wid;

  const Joined({Key? key, this.hei, this.wid}) : super(key: key);
  _JoinedState createState() => _JoinedState();
}

class _JoinedState extends State<Joined> {
  @override
  Widget build(BuildContext context) {
    double height = widget.hei;
    double width = widget.wid;
    final List<String> itemsimg = ['', '', '', '', ''];
    final List<String> itemname = [
      'Glossier Farmer',
      ' Hyderabad Farmer',
      'Firahal farmer',
      'Finheri makers',
      'Lipi peeps'
    ];
    return Container(
      height: widget.hei * 0.6,
      width: widget.wid * 0.9,
      child: ListView.builder(
        itemCount: itemsimg.length,
        itemBuilder: (context, index) {
          return Container(
            width: widget.wid * 0.9,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: width * 0.25,
                    width: width * 0.25,
                    child: Image.network(
                      itemname[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                      height: width * 0.25,
                      width: width * 0.25,
                      child: Center(
                        child: Text(
                          itemname[index],
                          style: TextStyle(
                              color: green, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: width * 0.1,
                      width: width * 0.2,
                      child: Center(
                          child: Text('join',
                              style: TextStyle(
                                  color: white,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
