import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Container(
            height:130.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('assets/images/3.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200.0, top: 10.0),
                      child: Text(
                        "Hi Arbaham",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          letterSpacing: 1.8,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 350.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(
                Radius.circular(20.0),
              ),
              color: Hexcolor('#393e53'),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                ),
                Icon(Icons.search,size: 35.0,color: Hexcolor('#737b9b'), ),
                Padding(padding: EdgeInsets.only(left:20.0),),
                Text(
                  "Search Task or Project....",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Hexcolor('#737b9b'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
