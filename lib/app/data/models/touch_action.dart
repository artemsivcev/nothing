import 'package:get/get.dart';

class TouchAction {
  final String name;
  bool isActive;

  TouchAction(this.name, this.isActive);
}

class NoAction extends TouchAction {
  @override
  final bool isActive;

  NoAction({this.isActive = false}) : super('no_action'.tr, isActive);
}

class NextSong extends TouchAction {
  @override
  final bool isActive;

  NextSong({this.isActive = false}) : super('next_song'.tr, isActive);
}

class PrevSong extends TouchAction {
  @override
  final bool isActive;

  PrevSong({this.isActive = false}) : super('previous_song'.tr, isActive);
}

class VoiceAssistant extends TouchAction {
  @override
  final bool isActive;

  VoiceAssistant({this.isActive = false}) : super('voice_assistant'.tr, isActive);
}

class PlayPause extends TouchAction {
  PlayPause() : super('play_pause'.tr, true);
}

class VolumeAdjust extends TouchAction {
  VolumeAdjust() : super('volume_up_down'.tr, true);
}

class Balanced extends TouchAction {
  @override
  final bool isActive;

  Balanced({this.isActive = false}) : super('balanced'.tr, isActive);
}

class Treble extends TouchAction {
  @override
  final bool isActive;

  Treble({this.isActive = false}) : super('more_treble'.tr, isActive);
}

class Bass extends TouchAction {
  @override
  final bool isActive;

  Bass({this.isActive = false}) : super('more_bass'.tr, isActive);
}

class Voice extends TouchAction {
  @override
  final bool isActive;

  Voice({this.isActive = false}) : super('voice'.tr, isActive);
}