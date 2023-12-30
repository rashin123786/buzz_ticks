import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    super.key,
    required this.firstcircleColor,
    required this.firstsubtitle,
    required this.firsticonColor,
    required this.firsttitle,
    required this.secondtitle,
    required this.secondsubtitle,
    required this.secondcircleColor,
    required this.secondiconColor,
    required this.firstIcon,
    required this.secondIcon,
  });
  final String firsttitle;
  final String firstsubtitle;
  final Color firstcircleColor;
  final Color firsticonColor;
  final String secondtitle;
  final String secondsubtitle;
  final Color secondcircleColor;
  final Color secondiconColor;
  final IconData firstIcon;
  final IconData secondIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              child: ListTile(
                title: Text(
                  firsttitle,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  firstsubtitle,
                  style: TextStyle(fontSize: 11),
                ),
                leading: CircleAvatar(
                  backgroundColor: firstcircleColor,
                  radius: 18,
                  child: Icon(
                    firstIcon,
                    color: firsticonColor,
                    size: 12,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              child: ListTile(
                title: Text(
                  secondtitle,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  secondsubtitle,
                  style: TextStyle(fontSize: 11),
                ),
                leading: CircleAvatar(
                  backgroundColor: secondcircleColor,
                  radius: 18,
                  child: Icon(
                    secondIcon,
                    color: secondiconColor,
                    size: 12,
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
