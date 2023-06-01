// ignore_for_file: unused_import

import 'package:flutter/animation.dart';

class OnboardingModel {
  String Topic;
  String subTopic;
  OnboardingModel({
    required this.Topic,
    required this.subTopic,
  });
}

List<OnboardingModel> onBoard = [
  OnboardingModel(
    Topic: "Join the best \ntailoring app",
    subTopic: "Take your tailoring to the next level \nwith Stitch Vine",
  ),
  OnboardingModel(
    Topic: "Join the best",
    subTopic: "Take your tailoring to the next level \nwith Stitch Vine",
  ),
  OnboardingModel(
    Topic: "tailoring app",
    subTopic: "Take your tailoring to the next level \nwith Stitch Vine",
  ),
  OnboardingModel(
    Topic: "Join the best \ntailoring app",
    subTopic: "Take your tailoring to the next level \nwith Stitch Vine",
  ),
];
