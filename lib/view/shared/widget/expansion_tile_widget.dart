import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({
    super.key,
    required this.title,
    required this.date,
    required this.totalTicket,
    required this.sales,
    required this.totalAmount,
    required this.salesAmount,
    required this.attendees,
  });
  final String title,
      date,
      totalTicket,
      sales,
      totalAmount,
      salesAmount,
      attendees;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: [
        SizedBox(
          height: 40,
          // child: ListTile(
          //   leading: Padding(
          //     padding: EdgeInsets.only(right: 40),
          //     child: Text(
          //       "Date",
          //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          //     ),
          //   ),
          //   title: Text(date),
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Date"),
              Text(date),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 100, maxHeight: 300),
                  child: Text("Total tickets")),
              Text(
                totalTicket,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                "Sales",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            title: Text(sales),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                "Total amount",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            title: Text(totalAmount),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                "Sales amount",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            title: Text(salesAmount),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                "Attendees",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            title: Text(attendees),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                "Attendees list",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            title: ElevatedButton(onPressed: () {}, child: Text("Download")),
          ),
        ),
      ],
    );
  }
}
