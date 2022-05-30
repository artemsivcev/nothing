import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details/In_ear_widget.dart';
import 'details/ble_address_widget.dart';
import 'details/details_title_widget.dart';
import 'details/disconnect_widget.dart';
import 'details/find_buds_widget.dart';
import 'details/firmware_widget.dart';
import 'details/forget_device_widget.dart';
import 'details/latecy_widget.dart';
import 'details/tips_support_widget.dart';

class DetailsSettingsWidget extends StatelessWidget {
  const DetailsSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 4,
        ),
        DetailsTitleWidget(),
        SizedBox(
          height: 12,
        ),
        InEarWidget(),
        SizedBox(
          height: 12,
        ),
        LatencyWidget(),
        SizedBox(
          height: 12,
        ),
        FindBudsWidget(),
        SizedBox(
          height: 12,
        ),
        FirmwareWidget(),
        SizedBox(
          height: 12,
        ),
        BleAddressWidget(),
        SizedBox(
          height: 12,
        ),
        TipSupportWidget(),
        SizedBox(
          height: 12,
        ),
        DisconnectWidget(),
        SizedBox(
          height: 12,
        ),
        ForgetDeviceWidget(),
      ],
    );
  }
}
