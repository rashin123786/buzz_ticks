import 'package:buzz_ticks/view/screen/add%20event/basic_info_screen.dart';
import 'package:buzz_ticks/view/screen/event%20screen/event_screen.dart';
import 'package:buzz_ticks/view/screen/order%20screen/order_screen.dart';
import 'package:buzz_ticks/view/screen/user%20screen/create_event_screen.dart';
import 'package:buzz_ticks/view/screen/user%20screen/user_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../screen/home screen/home_screen.dart';

class BottomNavWidget extends StatefulWidget {
  BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

int _selectedIndex = 0;

class _BottomNavWidgetState extends State<BottomNavWidget> {
  final pages = [
    HomeScreen(),
    UserScreen(),
    BasicInfoScreen(),
    EventScreen(),
    OrderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [pages[_selectedIndex]],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        activeColor: Color(0xFFFF6A00),
        color: Colors.grey,
        style: TabStyle.fixed,
        items: const [
          TabItem(
            icon: Icons.home,
            title: 'Home',
          ),
          TabItem(icon: Icons.person, title: 'Users'),
          TabItem(
              icon: CircleAvatar(
            backgroundColor: Color(0xFFFF6A00),
            foregroundColor: Colors.white,
            child: Icon(Icons.add),
          )),
          TabItem(icon: Icons.calendar_month, title: 'Events'),
          TabItem(icon: Icons.shopping_cart_outlined, title: 'Orders'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: (int i) {
          setState(() {
            print(i);
            _selectedIndex = i;
          });
        },
      ),
    );
  }
}
