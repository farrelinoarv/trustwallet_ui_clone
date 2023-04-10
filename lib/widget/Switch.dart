import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchButton({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
    );
  }
}
