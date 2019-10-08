import 'package:flutter/material.dart';
import 'my_card.dart';
import 'my_voting_result.dart';

class MyBoard extends StatefulWidget {
  @override
  _MyBoardState createState() => _MyBoardState();
}

class _MyBoardState extends State<MyBoard> {
  String userVote = '';
  Color resultColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildBoardTitle('Vote for the best Mobile App framework:'),
        SizedBox(
          height: 26.0,
        ),
        buildOptions(),
        SizedBox(
          height: 26.0,
        ),
        MyVotingResult(vote: userVote, color: resultColor,),
      ],
    );
  }

  void updateBoard(CardDetails cardDetails) {
    setState(() {
      userVote = cardDetails.title;
      resultColor = cardDetails.color;
    });
  }

  Widget buildBoardTitle(String title) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Colors.black38,
        ),
      ),
    );
  }

  Widget buildOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 80.0,
          height: 80.0,
          child: MyCard(
            onChanged: updateBoard,
            title: 'Flutter',
            color: Colors.blue,
          ),
        ),
        Container(
          width: 80.0,
          height: 80.0,
          child: MyCard(
            title: 'React',
            onChanged: (CardDetails newCardDetails) =>
              updateBoard(newCardDetails),
          ),
        ),
      ],
    );
  }
}
