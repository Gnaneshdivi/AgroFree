import 'package:agro/main/feed.dart';
import 'package:agro/veriable.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  int swi = 0;
  final List<String> itemsimg = ['', '', '', '', ''];
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        swi = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: swi == 0 ? darkgreen : green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: width * 0.1,
                      width: width * 0.3,
                      child: Center(
                          child: Text('State Update',
                              style: TextStyle(
                                  color: swi == 0 ? white : darkgreen,
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
                        swi = 1;
                      });
                    },
                    child: Container(
                      height: width * 0.1,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: swi == 1 ? darkgreen : green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          'District Update',
                          style: TextStyle(
                              color: swi == 1 ? white : darkgreen,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        swi = 2;
                      });
                    },
                    child: Container(
                      height: width * 0.1,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: swi == 3 ? darkgreen : green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          'Taluka Update',
                          style: TextStyle(
                              color: swi == 2 ? white : darkgreen,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://www.livecareer.com/wp-content/uploads/2020/09/software-engineer-skills-section-866x487.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Write Something Here ..',
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        child: Text(
                            "Eg.Authentic,Today's day is energitic and awsome",
                            overflow: TextOverflow.clip,
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                      )
                    ],
                  )
                ],
              ),
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    style: BorderStyle.solid,
                    color: green,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                  itemCount: itemsimg.length,
                  itemBuilder: (context, index) {
                    return Feed(
                      he: height,
                      we: width,
                    );
                  }),
              height: height * 0.62,
              width: width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          )
        ],
      ),
    );
  }
}
