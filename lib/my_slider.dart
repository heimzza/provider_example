import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/my_schedule.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    Timer.periodic(Duration(seconds: 1), (timer) {
      schedule.stateManagementTime = pi / 30 * DateTime.now().second.toDouble();
    });
    return Slider(
      value: schedule.stateManagementTime,
      min: 0,
      max: 2 * pi,
      onChanged: (value) => schedule.stateManagementTime = value,
    );
  }
}
