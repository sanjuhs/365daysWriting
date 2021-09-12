import 'package:flutter/material.dart';

class UpperBar extends StatelessWidget {
  Function saveHandler;

  UpperBar({required this.saveHandler});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text('Date'),
      ElevatedButton(
        child: Text('Save'),
        onPressed: () => saveHandler(),
      ),
    ]);
  }
}
