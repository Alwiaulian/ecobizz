import 'package:flutter/material.dart';

class CheckboxTitleCustom extends StatelessWidget {
  final bool isChecked;
  final Function onChange;
  final String text;
  final TextStyle textStyle;
  CheckboxTitleCustom({
    Key? key,
    this.isChecked = false,
    required this.onChange,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          unselectedWidgetColor: const Color(0xff57D38C),
          checkboxTheme: CheckboxThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          )),
      child: CheckboxListTile(
        checkColor: Colors.white,
        activeColor: const Color(0xff57D38C),
        selectedTileColor: const Color(0xff57D38C),
        value: isChecked,
        onChanged: (bool? value) => onChange(value),
        title: Transform.translate(
          offset: const Offset(-15, 0),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color(0xffF58220);
    }
    return const Color(0xffF58220);
  }
}
