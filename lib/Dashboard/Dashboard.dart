import 'package:agro/Dashboard/Widgets/drawer.dart';
import 'package:agro/Groups/Groups.dart';
import 'package:agro/Profile/profile.dart';
import 'package:agro/Text/chats.dart';
import 'package:agro/main/Homo.dart';
import 'package:agro/veriable.dart';
import '../veriable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  @override
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeDashboard(),
    Chats(),
    Center(
      child: Text(
        'Index 2: School',
        style: optionStyle,
      ),
    ),
    Group(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          _widgetOptions[_selectedIndex],
          Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height * 0.1,
            child: AppBar(
              iconTheme: IconThemeData(color: darkgreen),
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child:
                    _selectedIndex != 4 ? Image.asset('assets/Logo.png') : null,
              ),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
      endDrawer: Container(
        width: width * 0.6,
        child: MenuWidget(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: lime,
              size: 50,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              color: lime,
              size: 50,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: lime,
              size: 50,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: lime,
              size: 50,
            ),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert_outlined,
              color: lime,
              size: 50,
            ),
            label: 'Alert',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
