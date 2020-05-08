import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  IconData icon;
  String title;
  Function onTap;

  MenuItem(this.icon, this.title, this.onTap);

  @override
  MenuItemState createState() {
    return MenuItemState(icon, title, onTap);
  }
}

class MenuItemState extends State<MenuItem> {
  IconData icon;
  String title;
  Function onTap;

  MenuItemState(this.icon, this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35.0, 0, 40.0, 0),
      child: InkWell(
//        splashColor: Colors.grey[400],
        onTap: onTap,
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Icon(icon),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}