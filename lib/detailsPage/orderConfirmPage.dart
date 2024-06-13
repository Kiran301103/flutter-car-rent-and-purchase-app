import 'package:flutter/material.dart';

class OrderConfirmedPage extends StatefulWidget {
  @override
  _OrderConfirmedPageState createState() => _OrderConfirmedPageState();
}

class _OrderConfirmedPageState extends State<OrderConfirmedPage> {
  bool _isConfirmed = false;

  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the animation
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isConfirmed = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: _isConfirmed ? 200 : 0,
          height: _isConfirmed ? 200 : 0,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(_isConfirmed ? 100 : 0),
          ),
          child: _isConfirmed
              ? Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 150,
                )
              : null,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OrderConfirmedPage(),
  ));
}
