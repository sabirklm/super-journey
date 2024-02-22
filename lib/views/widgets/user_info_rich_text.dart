import 'package:flutter/material.dart';

class UserInfoRichText extends StatelessWidget {
  const UserInfoRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By ',
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
            text: 'John Doe',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          TextSpan(
            text: '   l   ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: 'Aug 23, 2021'),
        ],
      ),
    );
  }
}
