import 'package:get/get.dart';
import 'package:nothing/app/data/constants/fake_devices.dart';
import 'package:nothing/app/data/models/enums/device_status.dart';

import '../../../data/models/device.dart';
import 'current_device_settings_controller.dart';
import 'open_widgets_controller.dart';

class DevicesController extends GetxController {
  final openWidgetsController = Get.find<OpenWidgetsController>();

  ///devices
  ///
  RxBool isPairNew = false.obs;
  RxList<Device> connectedDevices = <Device>[].obs;
  RxList<Device> foundedDevices = <Device>[].obs;
  Rx<Device?> selectedDevice = (null as Device?).obs;

  List<Device> get pairedDeviceList {
    var list = connectedDevices.value.toList();
    if (selectedDevice.value != null && list.isNotEmpty) {
      list[list.indexWhere((element) => element.name == selectedDevice.value!.name)] = selectedDevice.value!;
    }
    return list;
  }

  @override
  void onInit() {
    loadDevices();
    if (connectedDevices.isEmpty) {
      isPairNew.value = true;
      startScanning();
    } else {
      selectedDevice = connectedDevices.first.obs;
    }
    super.onInit();
  }

  void loadDevices() {
    connectedDevices.value = [
      blackDevice,
      whiteDevice,
    ];
  }

  selectDevice(int index) {
    openWidgetsController.isDevicesOpen.value = false;
    isPairNew.value = false;
    selectedDevice.value = connectedDevices[index];
  }

  pairNewDevice() {
    openWidgetsController.isDevicesOpen.value = false;
    isPairNew.value = true;
    startScanning();
  }

  getHelpConnection() {
    //todo
  }

  Future<void> startScanning() async {
    await Future.delayed(const Duration(seconds: 2));
    foundedDevices.add(randomDevice);
    await Future.delayed(const Duration(seconds: 3));
    foundedDevices.add(whiteDevice);
    await Future.delayed(const Duration(seconds: 4));
    foundedDevices.add(blackDevice);
  }

  addDevice(int index) {
    var device = connectedDevices.firstWhereOrNull((device) => device.name == foundedDevices[index].name);
    var isAlreadyAdded = device != null;
    if (!isAlreadyAdded) {
      connectedDevices.add(foundedDevices[index]);
      selectedDevice = connectedDevices.last.obs;
    } else {
      selectedDevice = device.obs;
    }
    selectedDevice.update((val) {
      val?.status = DeviceStatus.connected;
    });
    Get.find<CurrentDeviceSettingController>().selectedDevice = selectedDevice;
    isPairNew.value = false;
  }
}
