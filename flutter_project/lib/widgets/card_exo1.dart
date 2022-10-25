import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardExo extends StatelessWidget {
  const CardExo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: ListTile(
            title: const Text(
              'DUJARDIN Jean',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Cinéma - comédien',
            ),
            trailing: Chip(
              label: Text('Soumis'),
              backgroundColor: Colors.yellow[50],
              labelStyle: TextStyle(color: Colors.orange[200]),
            ),
          ),
        ),
      ),
    );
  }
}
