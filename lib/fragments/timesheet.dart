import 'package:flutter/material.dart';

class TimesheetFragment extends StatefulWidget {
  @override
  TimesheetFragmentState createState() {
    return TimesheetFragmentState();
  }
}

class TimesheetFragmentState extends State<TimesheetFragment> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      children: <Widget>[
        TimesheetRow(1, "poniedziałek", "8h"),
        TimesheetRow(2, "wtorek", "6h"),
        TimesheetRow(3, "środa", ""),
      ],
    ));
  }
}

class TimesheetRow extends StatelessWidget {
  final int dayNumber;
  final String dayName;
  final String hours;

  TimesheetRow(this.dayNumber, this.dayName, this.hours);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(35.0, 0, 40.0, 0),
      child: InkWell(
//        splashColor: Colors.grey[400],
//          onTap: onTap,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 20.0, 0),
                    child: Text(
                      dayNumber.toString(),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    dayName,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      hours,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}

//http://www.mocky.io/v2/5eb330813200007c477b8815