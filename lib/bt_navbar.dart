import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:hackodisha/screens/Profile.dart';
import 'package:hackodisha/screens/contacts.dart';
import 'package:hackodisha/screens/homepage.dart';
import 'package:hackodisha/screens/split_bill.dart';
import 'package:hackodisha/screens/twilio.dart';

class BtNavigationBar extends StatefulWidget {
  const BtNavigationBar({Key? key}) : super(key: key);

  @override
  State<BtNavigationBar> createState() => _BtNavigationBarState();
}

class _BtNavigationBarState extends State<BtNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(title: "homescreen"),
    // Split_Bill(title: 'Split-Bill'),
    Contacts(),

    Twilio(title: 'Twilio'),
    Profilepage(),
  ];

  _BtNavigationBarState() {
    AlanVoice.addButton(
        "9425b8755ef7dbadb27e9005ab11a6952e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);
    //AlanVoice.playText("Hi" );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff080C15),
          selectedItemColor: Colors.blue,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home_icon.png"),
              label: 'Home',
              activeIcon: Image.asset(
                "assets/icons/home_icon.png",
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/splitbill_icon.png"),
              label: 'Split Bill',
              activeIcon: Image.asset(
                "assets/icons/splitbill_icon.png",
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/community_icon.png"),
              label: 'Social',
              activeIcon: Image.asset(
                "assets/icons/community_icon.png",
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/profile_icon.png"),
              label: 'Profile',
              activeIcon: Image.asset(
                "assets/icons/profile_icon.png",
                color: Colors.blue,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
