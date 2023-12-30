
import 'package:flutter/material.dart';

import 'VegList.dart';

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300, 100),
              textStyle: TextStyle(fontSize: 30),
              backgroundColor: Colors.white60,
              disabledBackgroundColor: Colors.white,
              side: BorderSide(color: Colors.purple, width: 1)
            ),
            child: Text('Start Shopping', style: TextStyle(color: Colors.purple)),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VegList())),
          ),
        ),
      ),
    );
  }
  
}
