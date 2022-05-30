import 'package:flutter/material.dart';

import 'logout/email_widget.dart';
import 'logout/logout_btn_widget.dart';
import 'logout/logout_title.dart';
import 'logout/nickname_widget.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        LogoutTitle(),
        SizedBox(
          height: 24,
        ),
        NicknameWidget(),
        SizedBox(
          height: 24,
        ),
        EmailWidget(),
        SizedBox(
          height: 36,
        ),
        LogoutBtnWidget(),
      ],
    );
  }
}
