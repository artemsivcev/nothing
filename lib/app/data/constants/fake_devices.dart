import '../models/device.dart';
import '../models/enums/device_status.dart';
import '../models/enums/sound_cancellation_mode.dart';
import '../models/touch_setting.dart';

Device blackDevice = Device(
  "Black ear (1)",
  true,
  DeviceStatus.disconnected,
  Equalizer(),
  SoundCancellationMode.cancel,
  true,
  false,
  false,
  Ear(
    DeviceStatus.connected,
    42,
    TripleTap(),
    TapHold(),
    DoubleTap(),
    Slide(),
  ),
  Ear(
    DeviceStatus.connected,
    60,
    TripleTap(),
    TapHold(),
    DoubleTap(),
    Slide(),
  ),
  78,
  '00:11:22:33:FF:EE',
  "0.0.1",
);

Device whiteDevice = Device(
  "White Nothing (1)",
  false,
  DeviceStatus.connected,
  Equalizer(),
  SoundCancellationMode.off,
  false,
  true,
  true,
  Ear(
    DeviceStatus.connected,
    20,
    TripleTap(),
    TapHold(),
    DoubleTap(),
    Slide(),
  ),
  Ear(
    DeviceStatus.connected,
    20,
    TripleTap(),
    TapHold(),
    DoubleTap(),
    Slide(),
  ),
  100,
  'AA:55:12:43:BB:32',
  "0.0.12",
);

Device randomDevice = Device(
  "Random's Nothing ear (1)",
  true,
  DeviceStatus.notConnected,
  Equalizer(),
  SoundCancellationMode.transparency,
  false,
  true,
  true,
  Ear(
    DeviceStatus.connected,
    100,
    TripleTap(),
    TapHold(),
    DoubleTap(),
    Slide(),
  ),
  Ear(
    DeviceStatus.connected,
    100,
    TripleTap(),
    TapHold(),
    DoubleTap(),
    Slide(),
  ),
  0,
  '11:55:34:23:FF:AA',
  "0.0.42",
);
