import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  int quantity;
  String title;
  bool isCurrent;

  Categories(this.quantity, this.title, this.isCurrent, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$quantity',
          style: TextStyle(
            color: isCurrent ? Colors.black : Colors.grey,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            color: isCurrent ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 20),
        Visibility(
          visible: isCurrent,
          child: Container(
            height: 8,
            width: 100,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
