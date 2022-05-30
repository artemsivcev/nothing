import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/my_device_button_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/settings/user_settings_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/settings_button_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user_avatar_widget.dart';

import 'devices/devices_list_widget.dart';
import 'user/user_login_widget.dart';

class UserBarWidget extends StatelessWidget {
  UserBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 450,
        width: 620,
        child: Stack(
          children: [
            Row(
              children: [
                UserAvatarWidget(),
                const Spacer(),
                MyDeviceButtonWidget(),
                const SizedBox(
                  width: 24,
                ),
                SettingsButtonWidget(),
              ],
            ),
            Positioned(
              top: 40,
              left: 80,
              child: DeviceListWidget(),
            ),
            Positioned(
              top: 40,
              left: 270,
              child: UserSettingsWidget(),
            ),
            Positioned(
              top: 40,
              child: UserLoginWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
