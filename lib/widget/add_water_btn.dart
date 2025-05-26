import 'package:flutter/material.dart';


class addWaterBtn extends StatelessWidget {
  final int amount;
  IconData ? icon;
  final VoidCallback onClick;
   addWaterBtn({
    super.key, required this.amount, required this.onClick, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton.icon(
          onPressed:onClick,
          label: Text(
            '+${amount} LTR',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          icon: Icon(icon ?? Icons.water_drop),
        ),
      ),
    );
  }
}
