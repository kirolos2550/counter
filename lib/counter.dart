
import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({
    super.key,
  });

  @override
  State<counter> createState() => _CounterState();
}

class _CounterState extends State<counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          counter_content(
            counter: counter,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              counterbtn(
                data: '-',
                color: Colors.red,
                myOnTab: () {
                  setState(() {
                    if (counter <= 0) {
                      counter = 0;
                    } else {
                      counter--;
                    }
                  });
                },
              ),
              counterbtn(
                data: '+',
                myOnTab: () {
                  setState(() {
                    if (counter >= 10) {
                      counter = 10;
                    } else {
                      counter++;
                    }
                  });
                },
              )
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}


class counter_content extends StatelessWidget {
  final int counter;
  const counter_content({
    super.key,required this.counter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 400,
      color: Colors.blue,
      child: Text(
        '$counter',
        style: TextStyle(color: Colors.white, fontSize: 100),
      ),
    );
  }
}


class counterbtn extends StatelessWidget {
  final String data;
  final Color color;
  void Function()? myOnTab ;
  counterbtn({
    super.key,
    required this.data,
    this.color = Colors.blue,
    required this.myOnTab
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: myOnTab,
      child: Container(
        alignment: Alignment.center,
        color: color,
        width: 100,
        height: 100,
        child: Text(
          data,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}