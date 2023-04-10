import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class GarisAbu extends StatelessWidget {
  const GarisAbu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: getProportionateScreenHeight(1),
      color: Colors.grey,
    );
  }
}
