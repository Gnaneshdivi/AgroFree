import 'package:agro/veriable.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.9,
      child: Stack(
        children: [
          Positioned(
            top: -20,
            child: Image.network(
              'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_1600%2Cc_limit/MtFuji-GettyImages-959111140.jpg',
              height: height * 0.3,
              width: width,
            ),
          ),
          Positioned(
            top: height * 0.18,
            child: Container(
              height: height * 0.7,
              width: width * 0.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          'https://www.livecareer.com/wp-content/uploads/2020/09/software-engineer-skills-section-866x487.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'KERRON MADDY',
                    style: TextStyle(
                        color: green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'BalsamiqSans'),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 33.0, top: 15, bottom: 5),
                      child: Text(
                        '80% Profile Completed',
                        style: TextStyle(
                            color: darkgreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'BalsamiqSans'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          color: darkgreen,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: height * 0.007,
                      width: width * 0.7,
                    ),
                    decoration: BoxDecoration(
                        color: green,
                        border: Border.all(
                          width: 0.01,
                          style: BorderStyle.solid,
                          color: darkgreen,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: height * 0.006,
                    width: width * 0.8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25.0, top: 5),
                      child: Text(
                        'Last Update Today',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'BalsamiqSans'),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: width * 0.03),
                      width: width * 0.8,
                      child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'KERRON MADDY',
                            hintStyle: TextStyle(
                                color: green,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: green),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ))),
                  SizedBox(height: height * 0.04),
                  Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(left: width * 0.03),
                      width: width * 0.8,
                      child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: '9876543210',
                            hintStyle: TextStyle(
                                color: green,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: green),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ))),
                  SizedBox(height: height * 0.04),
                  Container(
                      padding: EdgeInsets.only(left: width * 0.03),
                      width: width * 0.8,
                      child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'MAHARASTRA,BHANDRA',
                            hintStyle: TextStyle(
                                color: green,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: green),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ))),
                  SizedBox(height: height * 0.04),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'UPDATE',
                          style: TextStyle(
                              color: white,
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: darkgreen,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: height * 0.05,
                      width: width * 0.8,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
