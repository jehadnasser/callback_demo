import 'package:flutter/material.dart';
import '../models/card_details.dart';
export '../models/card_details.dart';

// Callback
typedef void DetailsCallback(CardDetails val);

class MyCard extends StatelessWidget {
  final String title;
  final DetailsCallback onChanged;
  final Color color;

  MyCard({
    @required this.title,
    @required this.onChanged,
    this.color = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(
          CardDetails(title, color),
        );
      },
      child: Card(
        color: color,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
