import 'package:flutter/material.dart';

class EachEventScreen extends StatelessWidget {
  const EachEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 225,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/event1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 67, 67, 89),
                          radius: 20,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 67, 67, 89),
                          radius: 20,
                          child: Center(
                            child: Icon(
                              Icons.qr_code_scanner_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: const Text("Rock n dhol garba event"),
                subtitle: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 60,
                        ),
                        const CircleAvatar(
                          radius: 12,
                        ),
                        const Positioned(
                          left: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 12,
                          ),
                        ),
                        const Positioned(
                          left: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 12,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      " 156 Attendees",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.calendar_month,
                    size: 18,
                    color: Colors.orange,
                  ),
                ),
                title: Text(
                  "Monday, 20-12-2023",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("12:00am - 12:00pm"),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.location_on_outlined,
                    size: 18,
                    color: Colors.orange,
                  ),
                ),
                title: Text(
                  "36 Guild Street London,UK",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Near by,36 Guild Street"),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.calendar_month,
                    size: 18,
                    color: Colors.orange,
                  ),
                ),
                title: Text(
                  "Event status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Color.fromARGB(255, 226, 243, 226),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Active",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type'''),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("  . Food Court"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("  . Free Parking at the venue"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("  . Live Music and Performance"),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Event Schedule",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 220, 220, 220)),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          EachEventScheduleWidget(),
                          EachGoldWidget(),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF6A00),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Text("Scan Qr"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xFFFF6A00),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF6A00)),
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Text("Attendees"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EachEventScheduleWidget extends StatelessWidget {
  const EachEventScheduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: const Color.fromARGB(255, 220, 220, 220))),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.credit_card,
              color: Colors.orange,
            ),
            title: RichText(
                text: TextSpan(
                    text: 'Event start on :- ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                    text: 'Aug 29,2023 at 12:00 Am',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                  )
                ])),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'Event end on :- ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                        text: 'Aug 30,2023 at 12:00 Am',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                      )
                    ])),
                RichText(
                    text: TextSpan(
                        text: 'Location :- ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                        text: 'Aug 29,2023 at 12:00 Am',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                      )
                    ]))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EachGoldWidget extends StatelessWidget {
  const EachGoldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 220, 220, 220)),
            color: Color.fromARGB(255, 255, 255, 255)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(
                Icons.calendar_month,
                color: Colors.orange,
                size: 18,
              ),
              title: Text(
                'Gold Schedule 1',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: RichText(
                  text: TextSpan(
                      text: 'Sales start on :- ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                      text: 'Aug 29,2023 at 15:00 Am',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    )
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: RichText(
                  text: TextSpan(
                      text: 'Sales end on :- ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                      text: 'Aug 29,2023 at 15:00 Am',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    )
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: RichText(
                  text: TextSpan(
                      text: 'Tickets :- ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                      text: '150 Tickets',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    )
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: RichText(
                  text: TextSpan(
                      text: 'Price :- ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                      text: '\$150.00',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    )
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
