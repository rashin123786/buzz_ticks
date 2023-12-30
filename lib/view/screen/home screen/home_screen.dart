import 'package:buzz_ticks/view/shared/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

import '../../shared/home_card_widget.dart';
import '../../shared/widget/expansion_tile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Dashboard',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
          actions: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.circle_notifications_outlined,
                color: Colors.grey,
                size: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 15,
              ),
            )
          ],
        ),
        drawer: const DrawerWidget(),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeCardWidget(
                  firstIcon: Icons.calendar_month,
                  secondIcon: Icons.calendar_month,
                  firstcircleColor: Color.fromARGB(255, 190, 223, 250),
                  firsticonColor: Colors.blue,
                  firstsubtitle: 'Total Events',
                  firsttitle: '05',
                  secondcircleColor: Color.fromARGB(255, 250, 230, 172),
                  secondiconColor: Colors.amber,
                  secondsubtitle: 'Upcoming Events',
                  secondtitle: '00',
                ),
                HomeCardWidget(
                  firstIcon: Icons.extension,
                  secondIcon: Icons.tv,
                  firstcircleColor: Color.fromARGB(255, 250, 190, 190),
                  firsticonColor: Color.fromARGB(255, 243, 33, 33),
                  firstsubtitle: 'Total Ticket Sale',
                  firsttitle: '06',
                  secondcircleColor: Color.fromARGB(255, 172, 175, 250),
                  secondiconColor: Color.fromARGB(255, 7, 65, 255),
                  secondsubtitle: 'Live Events',
                  secondtitle: '02',
                ),
                HomeCardWidget(
                  firstIcon: Icons.monetization_on,
                  secondIcon: Icons.monetization_on,
                  firstcircleColor: Color.fromARGB(255, 172, 175, 250),
                  firsticonColor: Color.fromARGB(255, 7, 65, 255),
                  firstsubtitle: 'Total Events',
                  firsttitle: '05',
                  secondcircleColor: Color.fromARGB(255, 250, 190, 190),
                  secondiconColor: Color.fromARGB(255, 243, 33, 33),
                  secondsubtitle: 'Upcoming Events',
                  secondtitle: '00',
                ),
                HomeCardWidget(
                  firstIcon: Icons.credit_card,
                  secondIcon: Icons.qr_code_scanner_rounded,
                  firstcircleColor: Color.fromARGB(255, 250, 230, 172),
                  firsticonColor: Colors.amber,
                  firstsubtitle: 'Total Events',
                  firsttitle: '05',
                  secondcircleColor: Color.fromARGB(255, 172, 175, 250),
                  secondiconColor: Color.fromARGB(255, 7, 65, 255),
                  secondsubtitle: 'Upcoming Events',
                  secondtitle: '00',
                ),
                ExpansionTileWidget(
                    attendees: '10/30',
                    date: "23-12-2023",
                    sales: '30',
                    salesAmount: '300',
                    title: 'Gold 1',
                    totalAmount: '\$3000',
                    totalTicket: '120'),
              ],
            ),
          ),
        ));
  }
}
