import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../common/colors.dart' as colors;

class Commit extends StatefulWidget {
  const Commit({super.key});

  @override
  State<Commit> createState() => _CommitState();
}

class _CommitState extends State<Commit> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.white,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            backgroundColor: colors.baseBlack,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: colors.baseBlack,
                  icon: SvgPicture.asset("lib/assets/icons/home.svg"),
                  activeIcon:
                      SvgPicture.asset("lib/assets/icons/homeActive.svg"),
                  label: "홈"),
              BottomNavigationBarItem(
                  backgroundColor: colors.baseBlack,
                  icon: SvgPicture.asset("lib/assets/icons/feed.svg"),
                  activeIcon:
                      SvgPicture.asset("lib/assets/icons/feedActive.svg"),
                  label: "피드"),
              BottomNavigationBarItem(
                  backgroundColor: colors.baseBlack,
                  icon: SvgPicture.asset("lib/assets/icons/ranking.svg"),
                  activeIcon:
                      SvgPicture.asset("lib/assets/icons/rankingActive.svg"),
                  label: "랭킹"),
              BottomNavigationBarItem(
                  backgroundColor: colors.baseBlack,
                  icon: SvgPicture.asset("lib/assets/icons/user.svg"),
                  activeIcon:
                      SvgPicture.asset("lib/assets/icons/userActive.svg"),
                  label: "마이페이지"),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showUnselectedLabels: true,
            unselectedItemColor: colors.white,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            fixedColor: colors.mainColor,
            type: BottomNavigationBarType.fixed,
          )),
    );
  }
}
