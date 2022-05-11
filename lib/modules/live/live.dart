import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 60,
        child: Card(
          elevation: 12.0,
          shadowColor: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Ahly',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'VS',
                    style: TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Wadi Digla',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text('3 : 0'),
            ],
          ),
        ),
      )),
    );
  }
}
