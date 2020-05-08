import 'package:flutter/material.dart';

class DayPlanFragment extends StatefulWidget {
  @override
  DayPlanFragmentState createState() {
    // TODO: implement createState
    return DayPlanFragmentState();
  }
}

class DayPlanFragmentState extends State<DayPlanFragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            "Harmonogram",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Column(
              children: <Widget>[
                DayPlanRow("Rozpoczęcie pracy:", "8:00"),
                DayPlanRow("Zakończenie pracy:", "8:00"),
              ],
            ),
          ),
        )),
        Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                "Podpisz listę obecności",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DayPlanRow extends StatelessWidget {
  final String label;
  final String content;

  DayPlanRow(this.label, this.content);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(fontSize: 12.0),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
          child: Text(
            content,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
