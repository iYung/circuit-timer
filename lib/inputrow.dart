import 'package:flutter/material.dart';

class InputRow extends StatelessWidget {

  InputRow({Key key, this.title, this.onPressed, this.val}) : super(key: key);

  final String title;
  final dynamic onPressed;
  final int val;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.display1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: onPressed,
                  ),
                  Text(
                    '$val',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}