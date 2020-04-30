import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_manager/widgets/fav_project.dart';
import 'package:task_manager/widgets/my_profile.dart';
import 'package:task_manager/widgets/task_wid.dart';
import 'package:task_manager/widgets/todays_task.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 25.0, top: 10.0),
              child: Center(
                child: Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Hexcolor('#3c4572'),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Column(
                children: <Widget>[
                  MyProfile(),
                  FavoriteProjects(),
                  TaskName(),
                  TodaysTask(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
