import 'package:flutter/material.dart';

class TasksFragment extends StatefulWidget {
  @override
  TasksFragmentState createState() {
    return TasksFragmentState();
  }
}

class TasksFragmentState extends State<TasksFragment> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      children: <Widget>[
        TaskRow(1, "Task pierwszy", "2020-03-20 20:20"),
        TaskRow(2, "Task drugi", "2020-03-20 20:20"),
        TaskRow(3, "Task trzeci", "2020-03-20 20:20"),
      ],
    ));
  }
}

class TaskRow extends StatelessWidget {
  final int taskId;
  final String taskName;
  final String createdDate;

  TaskRow(this.taskId, this.taskName, this.createdDate);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//        onTap: () => {
//          Navigator.push(
//        context,
//        MaterialPageRoute(builder: (context) => TaskDetailsPage(taskId, taskName))
//        )},
          title: Text(taskName,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold)),
          subtitle: Text(
            createdDate,
            style: TextStyle(fontSize: 12.0),
          )),
    );
  }
}
