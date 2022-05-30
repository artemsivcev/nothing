import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FlutterBlue flutterBlue = FlutterBlue.instance;

  void scan(){

    // Start scanning
    flutterBlue.startScan(timeout: Duration(seconds: 4));

// Listen to scan results
    var subscription = flutterBlue.scanResults.listen((results) async {
      // do something with scan results
      for (ScanResult r in results) {
        if(r.device.name == "Nothing ear (1)"){
          print('${r.device.name}');
          // Connect to the device
          await r.device.connect();
          List<BluetoothService> services = await r.device.discoverServices();
          services.forEach((service) {
            print('${service}');
          });
        }

      }
    });

// Stop scanning
    flutterBlue.stopScan();
  }
}
