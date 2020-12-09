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
              width: 50,
              height: 50,
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                double.parse(schedule.stateManagementTime.toStringAsFixed(2))
                    .toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              //child: FlutterLogo(),
              child: Transform.rotate(
                angle: schedule.stateManagementTime * 5,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.yellow[900]),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue[800]),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 50,
              bottom: 50,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
