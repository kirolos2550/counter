import 'package:flutter/material.dart';

class FlashLight extends StatefulWidget {
  const FlashLight({
    super.key,
  });

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  bool swicher = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              
              Icon(
                Icons.flash_on,
                color: swicher ? Colors.yellow : Colors.white,
                size: 80,
              ),
              
              MaterialButton(
                onPressed: () {
                  setState(() {
                    swicher = !swicher;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: swicher ? Colors.red : Colors.green,
                  child: Text(
                    swicher ? 'off' : 'on',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
