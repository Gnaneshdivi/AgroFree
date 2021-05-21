import 'package:flutter/material.dart';

import '../../veriable.dart';

class MenuWidget extends StatelessWidget {
  final Function(String)? onItemClick;

  const MenuWidget({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lime,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://www.livecareer.com/wp-content/uploads/2020/09/software-engineer-skills-section-866x487.jpg'),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Hello!!',
                    style: TextStyle(
                        color: green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'BalsamiqSans'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'KERRON MADDY',
                    style: TextStyle(
                        color: darkgreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'BalsamiqSans'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 10),
                  child: Container(
                    height: 2,
                    color: grey2,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'Social',
                    style: TextStyle(
                        color: green,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        fontFamily: 'BalsamiqSans'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Messages',
                        style: TextStyle(
                            color: grey1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'BalsamiqSans'),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.message)),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notifications',
                          style: TextStyle(
                              color: grey1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'BalsamiqSans'),
                        ),
                        IconButton(
                            alignment: Alignment.centerRight,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.add_alert_rounded,
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 2,
                    color: grey2,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'FAVOURITES',
                    style: TextStyle(
                        color: green,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        fontFamily: 'BalsamiqSans'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'News Feed',
                        style: TextStyle(
                            color: grey1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'BalsamiqSans'),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.book_rounded)),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saved Posts',
                          style: TextStyle(
                              color: grey1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'BalsamiqSans'),
                        ),
                        IconButton(
                            alignment: Alignment.centerRight,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.bookmark))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 2,
                    color: grey2,
                    width: 220,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                        color: green,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        fontFamily: 'BalsamiqSans'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'People',
                        style: TextStyle(
                            color: grey1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'BalsamiqSans'),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.person_add)),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Groups',
                          style: TextStyle(
                              color: grey1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'BalsamiqSans'),
                        ),
                        IconButton(
                            alignment: Alignment.centerRight,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.group))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 2,
                    color: grey2,
                    width: 220,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
