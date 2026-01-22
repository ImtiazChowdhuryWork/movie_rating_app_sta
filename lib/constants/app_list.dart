import 'package:flutter/material.dart';
import 'package:movie_rating_application/features/onboarding/data/model/onboarding_model.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';
import 'package:movie_rating_application/gen/colors.gen.dart';

import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_four.dart';
import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_one.dart';
import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_three.dart';
import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_two.dart';

class AppList {
  // static final List<OnboardingModel> onboardingList = [
  //   OnboardingModel(
  //     bodyImage: Assets.images.onboardingBodyImageOne.path,
  //     subTitle:
  //         'Get clear, honest ratings for every movie so you know exactly what to expect before you decide what to watch. Make smarter choices and find films that match your preferences.',
  //     titleMiniText: 'Know Which Movies Are ',
  //     titleBoldText: 'Woke!',
  //   ),
  //   OnboardingModel(
  //     bodyImage: Assets.images.onboardingBodyImageTwo.path,
  //     subTitle:
  //         'Real people sharing real opinions and experiences, bringing authentic voices and genuine perspectives to create meaningful conversations and connections within our community.',
  //     titleMiniText: 'Join the Woke Movie ',
  //     titleBoldText: 'Community',
  //   ),
  // ];
  static final List<Widget> onboardingList = [
    OnboardingWdigetScreenOne(),
    OnboardingWdigetScreenTwo(),
    OnboardingWdigetScreenThree(),
    OnboardingWdigetScreenFour(),
  ];
}
