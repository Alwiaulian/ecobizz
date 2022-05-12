import 'package:flutter/material.dart';

class SomethingWhenWrong extends StatelessWidget {
  const SomethingWhenWrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("lost_connection_something_went_wrong"),
      ),
    );
  }
}
