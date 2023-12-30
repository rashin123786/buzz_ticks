import 'package:flutter/material.dart';

class EventGridWidget extends StatelessWidget {
  const EventGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 0.5,
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/event1.png",
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Rock n dhol Garba",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  " 20-12-2023",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    "36 Guild  Street London, Uk",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " \$100",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
