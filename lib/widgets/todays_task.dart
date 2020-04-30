import 'package:flutter/material.dart';
import 'package:task_manager/models/todaystask_models.dart';

class TodaysTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 220.0,
          width: 410,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: tasks.length,
            itemBuilder: (BuildContext context, int index) {
              final TodayTask task = tasks[index];
              return GestureDetector(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        task.isFinish
                            ? Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: IconButton(
                                  padding: EdgeInsets.only(bottom: 0.0),
                                  icon: Icon(
                                    Icons.check_circle,
                                    color: Theme.of(context).primaryColor,
                                    size: 40.0,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: IconButton(
                                  padding: EdgeInsets.only(bottom: 0.0),
                                  icon: Icon(
                                    Icons.panorama_fish_eye,
                                    color: Theme.of(context).primaryColor,
                                    size: 40.0,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              task.task.ad,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.7,
                                fontSize: 17.0,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text(
                                task.text,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70.0),
                          child: Column(
                            children: <Widget>[
                              task.isNew
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.done_all,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      onPressed: () {},
                                    )
                                  : IconButton(
                                      icon: Icon(Icons.done,
                                          color:
                                              Theme.of(context).primaryColor),
                                      onPressed: () {},
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
