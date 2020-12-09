import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_schedule.dart';

class MyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, schedule, _) => Transform.rotate(
        angle: schedule.stateManagementTime,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(80.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              padding: const EdgeInsets.all(8.0),
            ),
            Positioned(
              top: 50,
              left: 50,
              //child: FlutterLogo(),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.yellow[800]),
              ),
            ),
            Positioned(
              right: 50,
              bottom: 50,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.yellow[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
