import 'package:flutter/material.dart';

class WidgetLogoMuin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Mu",
            style: TextStyle(color: Colors.white, fontSize: 60),
          ),
          Text(
            "in",
            style: TextStyle(
                color: Color.fromARGB(255, 216, 177, 41), fontSize: 60),
          ),
        ],
      ),
    );
  }
}
