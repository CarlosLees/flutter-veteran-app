import 'package:flutter/material.dart';

typedef OnButtonPress = void Function();

class Button extends StatelessWidget {

  final OnButtonPress onButtonPress;

  const Button({super.key, required this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
      child: Ink(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [Colors.orange, Colors.deepOrange, Colors.orangeAccent])
          ),
          child: InkWell(
            onTap: onButtonPress,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Text("返回", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),),
            ),
          )
      ),
    );
  }
}
