import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_schedule.dart';

class MyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, schedule, _) => Text(schedule.stateManagementTime.toString()),
    );
  }
}
