import 'dart:convert';

import 'package:flutter/material.dart';

class ProjectsFragment extends StatefulWidget {
  @override
  ProjectsFragmentState createState() {
    return ProjectsFragmentState();
  }
}

class ProjectsFragmentState extends State<ProjectsFragment> {
  var projects = new List<Project>();
  List<Widget> projectWidgets;

  @override
  initState() {
    super.initState();
//    loadProjectList();
    print("Projekty: ");
    projects.forEach((project) => {print(project.name)});
    projectWidgets = generateProjectRows();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: ListView(children: projectWidgets));
  }

  List<Widget> generateProjectRows() {
    List<Widget> rows = [];
    projects.forEach((project) =>
        {rows.add(ProjectRow(project.id, project.customer, project.customer))});
    return rows;
  }

//  loadProjectList() async {
//    ProjectAPI.getProjects().then((response) => {
//          setState(() {
//            Iterable list = json.decode(response.body);
//            projects = list.map((project) => Project.fromJson(project)).toList();
//          })
//        });
//  }
}

class ProjectRow extends StatefulWidget {
  final int projectId;
  final String projectName;
  final String customerName;

  ProjectRow(this.projectId, this.projectName, this.customerName);

  @override
  State<StatefulWidget> createState() {
    return ProjectRowState(projectId, projectName, customerName);
  }
}

class ProjectRowState extends State<ProjectRow> {
  final int projectId;
  final String projectName;
  final String customerName;

  ProjectRowState(this.projectId, this.projectName, this.customerName);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0, 40.0, 0),
      child: InkWell(
//          onTap: onTap,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      projectName,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    customerName,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      projectId.toString(),
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

class Project {
  int id;
  String name;
  String customer;

//  Project(this.id, this.name, this.customer);
  Project(id, name, customer) {
    this.id = id;
    this.name = name;
    this.customer = customer;
  }

  Project.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        customer = json['customer'];
}
