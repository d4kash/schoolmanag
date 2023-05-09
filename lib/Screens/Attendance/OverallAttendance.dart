import 'package:flutter/material.dart';

import 'package:schoolmanag/Widgets/Attendance/OverAllAttendanceCard.dart';

class OverallAttendance extends StatefulWidget {
  const OverallAttendance({Key? key}) : super(key: key);

  @override
  _OverallAttendanceState createState() => _OverallAttendanceState();
}

class _OverallAttendanceState extends State<OverallAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          OverallAttendanceCard(
            date: "15.06.2022",
            day: "Wednesday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "16.06.2022",
            day: "Thursday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "17.06.2022",
            day: "Friday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "18.06.2022",
            day: "Saturday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "19.06.2022",
            day: "sunday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "20.06.2022",
            day: "Monday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "21.06.2022",
            day: "Tuesday",
            firsthalf: false,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "22.06.2022",
            day: "Wednesday",
            firsthalf: false,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "23.06.2022",
            day: "Thursday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "24.06.2022",
            day: "Friday",
            firsthalf: true,
            secondhalf: false,
          ),
          OverallAttendanceCard(
            date: "25.06.2022",
            day: "Saturday",
            firsthalf: true,
            secondhalf: false,
          ),
        ],
      ),
    );
  }
}
