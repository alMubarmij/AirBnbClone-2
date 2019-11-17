import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AirBnb'),
        backgroundColor: Color(0xfffd5c63),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Well hello'),
        ),
      ),
    );
  }
}
