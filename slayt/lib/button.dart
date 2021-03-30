import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              'Buton',
              style: Theme.of(context).textTheme.headline6,
            ),
            onPressed: () {
              print('xxxx');
            }),
      ],
    );
  }
}
