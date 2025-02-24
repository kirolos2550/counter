

import 'package:flutter/material.dart';

class BasketballSplash extends StatelessWidget {
  const BasketballSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFBB8243),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Row(),
            Text('Basketball Teams',style: TextStyle(
              color: Color(0xFF772E09),fontWeight: FontWeight.bold,
              fontSize: 50,),),
              Text('League Match',style: TextStyle(
              color: Color(0xFF772E09),
              fontSize: 50,)),
              Image.asset('pics/BB.png',
              width: 200, height: 200)
          ]
        ),
      ),
    );
  }
}