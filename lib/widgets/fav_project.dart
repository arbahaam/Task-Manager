import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_manager/models/favproject_models.dart';

class FavoriteProjects extends StatefulWidget {
  @override
  _FavoriteProjectsState createState() => _FavoriteProjectsState();
}

class _FavoriteProjectsState extends State<FavoriteProjects> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Projects",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.8,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "(13)",
                    style: TextStyle(
                      color: Hexcolor('#737b9b'),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.8,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: EdgeInsets.only(left:15.0),
                scrollDirection: Axis.horizontal,
                itemCount: favproject.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favproject[index].imgUrl),
                        ),
                        // SizedBox(
                        //   height: 5.0,
                        // ),
                        Padding(padding: EdgeInsets.only(top:5.0),),
                        Text(
                          favproject[index].name,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
