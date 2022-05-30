import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/data/constants/images.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user/avatar/empty_avatar.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user/avatar/user_greetings.dart';

import '../../../controllers/open_widgets_controller.dart';
import '../../../controllers/user_controller.dart';
import '../common/ink_well.dart';

class UserAvatarWidget extends StatelessWidget {
  UserAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<UserController>(builder: (controller) {
      return InkWellTransparent(
        onTap: () => Get.find<OpenWidgetsController>().toggleUserLogin(),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: context.theme.colorScheme.onSecondary, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: context.theme.colorScheme.secondary),
                  child: controller.currentUser.value == null
                      ? CircleAvatar(
                          backgroundImage: AssetImage(
                            assetIconApp,
                          ),
                        )
                      : EmptyAvatar(
                          name: controller.currentUser.value?.name[0] ?? "",
                        ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            UserGreetings(name: controller.currentUser.value?.name ?? "username".tr),
          ],
        ),
      );
    });
  }
}
