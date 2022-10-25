import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonExo2 extends StatefulWidget {
  const ButtonExo2({super.key});

  @override
  State<ButtonExo2> createState() => _ButtonExo2State();
}

class _ButtonExo2State extends State<ButtonExo2> {
  late bool isRed;
  late bool logo;

  @override
  void initState() {
    isRed = true;
    logo = true;
    // TODO: implement initState
    super.initState();
  }

  void changeColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  void changeIcon() {
    setState(() {
      logo = !logo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeColor();
        changeIcon();
        print("le  container isRed ? $isRed");
      },
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: isRed ? Colors.green : Colors.red,
          ),
          width: 500,
          height: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  logo ? Icons.check : Icons.cancel,
                  size: 50,
                ),
                Text(
                  logo ? 'Validé' : 'Refusé',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
    );
  }
}
