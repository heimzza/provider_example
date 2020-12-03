import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, schedule, _) => Text(schedule.stateManagementTime),
    );
  }
}
