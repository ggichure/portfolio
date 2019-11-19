import 'package:flutter/material.dart';

import 'appthemes.dart';

class UserIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      child: Image.network(AppThemeStyles.avatarUrl),
    );
  }
}
