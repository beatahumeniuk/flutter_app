import 'package:flutter/material.dart';
import 'package:mobile/fragments/dayPlan.dart';
import 'package:mobile/fragments/projects.dart';
import 'package:mobile/fragments/tasks.dart';
import 'package:mobile/fragments/timesheet.dart';

import '../colors.dart';
import 'menuItem.dart';

class MenuPage extends StatefulWidget {
  @override
  MenuPageState createState() {
    return new MenuPageState();
  }
}

class MenuPageState extends State<MenuPage> {
  String title;
  Widget body;

//  MenuItem selectedMenuItem;
  List<Widget> workerMenuItemWidgetList;
  List<Widget> managerMenuItemWidgetList;
  Map<String, List<Item>> items;

  @override
  initState() {
    super.initState();
    items = createAllItems();
    workerMenuItemWidgetList = createMenuItems(items["Worker"]);
    managerMenuItemWidgetList = createMenuItems(items["Manager"]);
    title = items["Worker"].first.title;
    body = items["Worker"].first.widgetItem;
  }

  List<Widget> createMenuItems(List<Item> content) {
    List<Widget> widgetList = [];
    content.forEach((item) => {
          widgetList.add(
            MenuItem(item.icon, item.title,
                () => {onItemSelected(item.title, item.widgetItem)}),
          )
        });
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 20.0)),
                    Material(
                      child: Image.asset("images/s4time.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 20.0, 10.0, 0),
                      child: Text(
                        "Stan Sorenson",
                        style:
                            TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(children: workerMenuItemWidgetList),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide())),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10.0, 10.0, 10.0),
                      child: Text("Manager"),
                    ),
                    Column(
                      children: managerMenuItemWidgetList,
                    )
                  ]),
            ),
          ],
        ),
      ),
      body: body,
    );
  }

  onItemSelected(String s, Widget fragment) {
    setState(() {
      title = s;
      body = fragment;
    });
    Navigator.pop(context);
  }

  Map<String, List<Item>> createAllItems() {
    Map<String, List<Item>> map = new Map();

    map["Worker"] = [
      Item(Icons.event_note, "Zadania", new TasksFragment()),
      Item(Icons.event, "Timesheet", new TimesheetFragment()),
      Item(Icons.schedule, "Plan Dnia", new DayPlanFragment())
    ];

    map["Manager"] = [Item(Icons.filter, "Projekty", new ProjectsFragment())];
    return map;
  }
}

class Item {
  IconData icon;
  String title;
  Widget widgetItem;

  Item(this.icon, this.title, this.widgetItem);
}
