
import 'package:flutter/material.dart';

class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  int teamAScore = 0;
  int teamBScore = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          'Basketball App',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 600,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Teams(
                  teamName: 'team A',
                  score: teamAScore,
                  addPoints: (k) {
                    setState(() {
                      teamAScore += k;
                    });
                  },
                ),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 5,
                ),
                Teams(
                  teamName: 'team B',
                  score: teamBScore,
                  addPoints: (k) {
                    setState(() {
                      teamBScore += k;
                    });
                  },
                ),
                Icon(Icons.sports_basketball_rounded)
              ],
            ),
          ),
          Reset(
            onReset: () {
              setState(() {
                teamAScore = 0;
                teamBScore = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}



class Teams extends StatelessWidget {
  final String teamName;
  final int score;
  final void Function(int) addPoints;
  const Teams(
      {super.key,
      required this.teamName,
      required this.score,
      required this.addPoints});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '$teamName',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          score.toString(),
          style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10)),
            onPressed: () {
              addPoints(1);
            },
            child: Text(
              '+1',
              style: TextStyle(
                fontSize: 30,
              ),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10)),
            onPressed: () {
              addPoints(2);
            },
            child: Text(
              '+2',
              style: TextStyle(
                fontSize: 30,
              ),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10)),
            onPressed: () {
              addPoints(3);
            },
            child: Text(
              '+3',
              style: TextStyle(
                fontSize: 30,
              ),
            ))
      ],
    );
  }
}


class Reset extends StatelessWidget {
  final VoidCallback onReset;
  const Reset({
    required this.onReset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 8)),
        onPressed: onReset,
        child: Text(
          'Reset',
          style: TextStyle(fontSize: 40, color: Colors.black),
        ));
  }
}
