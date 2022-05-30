import 'package:get/get.dart';


import '../controllers/app_settings_controller.dart';
import '../controllers/current_device_settings_controller.dart';
import '../controllers/devices_controller.dart';
import '../controllers/home_controller.dart';
import '../controllers/open_widgets_controller.dart';
import '../controllers/user_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DevicesController>(
          () => DevicesController(),
    );
    Get.lazyPut<AppSettingsController>(
          () => AppSettingsController(),
    );
    Get.lazyPut<UserController>(
          () => UserController(),
    );
    Get.lazyPut<CurrentDeviceSettingController>(() => CurrentDeviceSettingController(), fenix: true);
    Get.lazyPut<OpenWidgetsController>(() => OpenWidgetsController(), fenix: true);
  }
}
