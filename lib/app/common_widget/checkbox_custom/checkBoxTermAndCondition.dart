import 'package:flutter/material.dart';

class CheckboxTermAndCondition extends StatelessWidget {
  final bool isChecked;
  final Function onChange;
  final Widget text;
  CheckboxTermAndCondition({
    Key? key,
    this.isChecked = false,
    required this.onChange,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          unselectedWidgetColor: const Color(0xffF58220),
          checkboxTheme: CheckboxThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          )),
      child: CheckboxListTile(
        checkColor: Colors.white,
        activeColor: const Color(0xffF58220),
        selectedTileColor: const Color(0xffF58220),
        value: isChecked,
        onChanged: (bool? value) => onChange(value),
        title: Transform.translate(
          offset: const Offset(-15, 0),
          child: text,
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
