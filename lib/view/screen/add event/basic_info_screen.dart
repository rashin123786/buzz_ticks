import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:buzz_ticks/view/shared/widget/auth_reused_textfield_widget.dart';

import 'package:flutter/material.dart';

class BasicInfoScreen extends StatefulWidget {
  const BasicInfoScreen({super.key});

  @override
  State<BasicInfoScreen> createState() => _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: AnotherStepper(
                    stepperList: basicStepperData,
                    inverted: true,
                    stepperDirection: Axis.horizontal,
                    iconWidth: 40,
                    iconHeight: 40,
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    width: double.infinity,
                    child: ListTile(
                      title: Text("Basic Information"),
                      leading: CircleAvatar(
                          child: Icon(Icons.info, color: Color(0xFFFF6A00)),
                          backgroundColor: Colors.grey[100]),
                      subtitle: Text(
                          "Name your event and tell event-goers why they should come. Add details & highlight what makes it unique.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                ),
                AuthTextFieldWidget(
                    title: 'Event Name', hint: "Enter Event Name"),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8, bottom: 5),
                  child: Text(
                    "Event Type",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: ExpansionTile(title: Text("Single"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8, bottom: 5),
                  child: Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        maxLines: 10,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Event Description'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8, bottom: 5),
                  child: Text(
                    "Add Image",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Upload event image here",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Next"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFFFF6A00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<StepperData> basicStepperData = [
  StepperData(
      title: StepperText(
        "Basic Info",
        textStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
      iconWidget: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Text(
          "1",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      )),
  StepperData(
      title: StepperText("Details"),
      iconWidget: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(
          "2",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      )),
  StepperData(
      title: StepperText("Preview"),
      iconWidget: CircleAvatar(
        backgroundColor: Colors.black,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text(
            "3",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      )),
];
