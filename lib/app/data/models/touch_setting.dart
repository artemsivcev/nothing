import 'package:get/get.dart';
import 'package:nothing/app/data/models/touch_action.dart';

class TouchSetting {
  final String name;
  List<TouchAction> actions;

  TouchSetting({
    this.name = "",
    this.actions = const [],
  });

  String get selectedActionName {
    var name = NoAction().name;
    for (var action in actions) {
      if (action.isActive) {
        name = action.name;
        break;
      }
    }

    return name;
  }

  void toggleAction(int index) {
    disableAllActions();
    var action = actions[index];
    actions[index] = TouchAction(action.name, !action.isActive);
  }

  void disableAllActions() {
    for (var action in actions) {
      var index =   actions.indexOf(action);
      actions[index] = TouchAction(action.name, false);

    }
  }
}

class NotFound extends TouchSetting {
  @override
  final name = "not_found".tr;

  @override
  List<TouchAction> actions = [
    NoAction(),
  ];
}

class TripleTap extends TouchSetting {
  @override
  final name = "triple_tap".tr;

  @override
  List<TouchAction> actions = [
    NextSong(isActive: true),
    PrevSong(),
    VoiceAssistant(),
    NoAction(),
  ];
}

class TapHold extends TouchSetting {
  @override
  final name = "tap_hold".tr;

  @override
  final List<TouchAction> actions = [
    NextSong(),
    PrevSong(),
    VoiceAssistant(isActive: true),
    NoAction(),
  ];
}

class DoubleTap extends TouchSetting {
  @override
  final name = "double_tap".tr;

  @override
  final List<TouchAction> actions = [
    PlayPause(),
  ];
}

class Slide extends TouchSetting {
  @override
  final name = "slide_stem".tr;

  @override
  final List<TouchAction> actions = [
    VolumeAdjust(),
  ];
}

class Equalizer extends TouchSetting {
  @override
  final name = "equalizer".tr;

  @override
  List<TouchAction> actions = [
    Balanced(isActive: true),
    Treble(),
    Bass(),
    Voice(),
  ];
}
