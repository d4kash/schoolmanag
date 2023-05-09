import 'package:flutter/material.dart';

import 'package:schoolmanag/Widgets/Attendance/AttendanceCard.dart';

class TodayAttendance extends StatefulWidget {
  const TodayAttendance({Key? key}) : super(key: key);

  @override
  _TodayAttendanceState createState() => _TodayAttendanceState();
}

class _TodayAttendanceState extends State<TodayAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          AttendanceCard(
            attendance: true,
            endtime: "10 AM",
            staff: "Deepak",
            starttime: "9 AM",
            subject: "English",
          ),
          AttendanceCard(
            attendance: false,
            endtime: "11 AM",
            staff: "Deepak",
            starttime: "10 AM",
            subject: "Hindi",
          ),
        ],
      ),
    );
  }
}
