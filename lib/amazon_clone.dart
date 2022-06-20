import 'package:flutter/material.dart';

import 'account.dart';
import 'cart.dart';
import 'dashboard.dart';
import 'home.dart';

class AmazonClone extends StatefulWidget {
  const AmazonClone({Key? key}) : super(key: key);

  @override
  State<AmazonClone> createState() => _AmazonCloneState();
}

class _AmazonCloneState extends State<AmazonClone> {
  final List<Widget> tabs = [
    const HomePage(),
    const AccountPage(),
    const CartPage(),
    const DashboardPage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;
  Widget _bottomNavigationBar(int selectedIndex) => SizedBox(
        height: 47.0,
        child: BottomNavigationBar(
          elevation: 2.5,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) => setState(() => _selectedIndex = index),
          currentIndex: selectedIndex,
          selectedFontSize: 12.0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontSize: 0.0),
          unselectedLabelStyle: TextStyle(fontSize: 0.0),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SizedBox(
              height: 46.0,
              child: Stack(
                children: [
                  Container(
                    height: 4.8,
                    width: 44.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0.0),
                          bottomLeft: Radius.circular(50.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(50.0),
                        ),
                        color: Colors.teal),
                    alignment: Alignment.topCenter,
                  ),
                  Container(height: 44.0, child: SvgPicture.asset('assets/images/home.svg'),)
                ],
              ),
            ))
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: tabs[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
