import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  String text;
  bool isDone;

  TodoWidget({this.text = 'Unnamed', this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(
              right: 12.0,
            ),
            decoration: BoxDecoration(
                color: isDone ? Color(0xFFD95B07) : Colors.transparent,
                borderRadius: BorderRadius.circular(6.0),
                border: isDone ? null : Border.all(color: Color(0xFF86829D))),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&psig=AOvVaw2xJwtoKSgaFaAbRzSSO2Xy&ust=1668028342644000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJi_uve_n_sCFQAAAAAdAAAAABAE',
              ),
            ),
          ),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: isDone ? Color(0xFF512C15) : Color(0xFF86829D),
                fontSize: 16.0,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
