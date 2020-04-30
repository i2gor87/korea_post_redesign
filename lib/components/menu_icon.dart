import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key key, this.iconData, this.outline, this.iconText})
      : super(key: key);

  final IconData iconData;
  final bool outline;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return outline
        ? Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColorDark,
                width: 0.1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  iconData,
                  size: 40.0,
                ),
                Text(iconText)
              ],
            ),
          )
        : Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  iconData,
                  size: 40.0,
                ),
                Text(
                  iconText,
                  style: TextStyle(fontSize: 10.0),
                )
              ],
            ),
          );
  }
}
