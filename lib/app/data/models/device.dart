import 'package:nothing/app/data/models/touch_setting.dart';

import 'enums/device_status.dart';
import 'enums/sound_cancellation_mode.dart';

class Device {
  //device
  final String name;
  final bool isBlack;
  DeviceStatus status;

  //features
  final Equalizer equalizer;
  SoundCancellationMode noiseCancellation;
  bool isMaximumCancellation;
  bool isLowLatency;
  bool inEarDetection;

  //ears
  final Ear left;
  final Ear right;

  //case
  final int caseCharge;
  final String bleAddress;
  final String firmware;

  Device(this.name, this.isBlack, this.status, this.equalizer, this.noiseCancellation, this.isMaximumCancellation,
      this.isLowLatency, this.inEarDetection, this.left, this.right, this.caseCharge, this.bleAddress, this.firmware);
}

class Ear {
  final DeviceStatus status;
  final int charge;
  final TripleTap tripleTap;
  final TapHold tapHold;
  final DoubleTap doubleTap;
  final Slide slide;

  Ear(this.status, this.charge, this.tripleTap, this.tapHold, this.doubleTap, this.slide);
}
