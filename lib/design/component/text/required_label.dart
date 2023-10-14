import 'package:write_score/helper/extension/context.dart';
import 'package:flutter/material.dart';

class RequiredLabel extends StatelessWidget {
  const RequiredLabel(this._label, {super.key, this.style});
  final String _label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _label,
          style: style,
        ),
        Text(
          ' *',
          style: TextStyle(color: context.colorScheme.error),
        )
      ],
    );
  }
}
