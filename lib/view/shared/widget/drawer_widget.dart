import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  width: 40,
                  height: 40,
                  // fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                const ListTile(
                  title: Text("User"),
                  leading: Icon(Icons.person),
                ),
                const ListTile(
                  title: Text("Event"),
                  leading: Icon(Icons.calendar_month),
                ),
                const ListTile(
                  title: Text("Orders"),
                  leading: Icon(Icons.shopping_cart_outlined),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFFF6A00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
