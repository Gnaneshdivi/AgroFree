import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  final he;
  final we;

  const Feed({Key? key, this.he, this.we}) : super(key: key);
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    double height = widget.he;
    double width = widget.we;
    return Container(
      height: height * 0.62,
      width: width * 0.9,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: width * 0.02,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://www.livecareer.com/wp-content/uploads/2020/09/software-engineer-skills-section-866x487.jpg'),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pritpal Singh',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    Row(
                      children: [
                        Text(
                          'Sponcered',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                        Icon(Icons.circle)
                      ],
                    ),
                    SizedBox(
                      width: height * 0.02,
                    ),
                    Text('HEllo this is fun making '),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Container(
            height: height * 0.3,
            width: width * 0.8,
            child: Image.network(
              'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_1600%2Cc_limit/MtFuji-GettyImages-959111140.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: width * 0.25,
                  width: width * 0.25,
                  child: Column(
                    children: [
                      Text('like'),
                      Icon(Icons.favorite),
                    ],
                  ),
                ),
                Container(
                  height: width * 0.25,
                  width: width * 0.25,
                  child: Column(
                    children: [
                      Text('coment'),
                      Icon(Icons.chat_bubble),
                    ],
                  ),
                ),
                Container(
                  height: width * 0.25,
                  width: width * 0.25,
                  child: Column(
                    children: [
                      Text('share'),
                      Icon(Icons.share),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
