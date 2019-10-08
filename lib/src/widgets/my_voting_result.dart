import 'package:flutter/material.dart';

class MyVotingResult extends StatelessWidget {
  final String vote;
  final Color color;
  MyVotingResult({this.vote, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RichText(
          text: TextSpan(
            text: 'You voted for: ',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.black38,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '$vote',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
