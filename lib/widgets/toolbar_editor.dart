import 'package:flutter/material.dart';
import 'package:myapp9_365dayswriting/widgets/smart_textfield.dart';


class Toolbar extends StatelessWidget {

  const Toolbar({required Key key,required this.onSelected, required this.selectedType}): super(key: key);

  final SmartTextType selectedType;
  final ValueChanged<SmartTextType> onSelected;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: Material(
        elevation: 4.0,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.format_size,
                color: selectedType == SmartTextType.H1
                  ? Colors.teal
                  : Colors.black
              ),
              onPressed: () => onSelected(SmartTextType.H1)
            ),
            IconButton(
              icon: Icon(
                Icons.format_quote,
                color: selectedType == SmartTextType.QUOTE
                  ? Colors.teal
                  : Colors.black
              ),
              onPressed: () => onSelected(SmartTextType.QUOTE)
            ),
            IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: selectedType == SmartTextType.BULLET
                  ? Colors.teal
                  : Colors.black
              ),
              onPressed: () => onSelected(SmartTextType.BULLET)
            )
          ]
        )
      ),
    );
  }
}