import 'package:flutter/material.dart';
import 'package:movie_rating_application/gen/assets.gen.dart';

import '../features/home/data/model/content_card_model.dart';
import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_four.dart';
import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_one.dart';
import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_three.dart';
import '../features/onboarding/presentation/widgets/onboarding_wdiget_screen_two.dart';

class AppList {
  static final List<Widget> onboardingList = [
    OnboardingWdigetScreenOne(),
    OnboardingWdigetScreenTwo(),
    OnboardingWdigetScreenThree(),
    OnboardingWdigetScreenFour(),
  ];

  static final List<ContentCardModel> contentList = [
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageOne.path,
      contentName: 'The Last Kingdom',
      contentType: 'TV Series',
      contentLifeCycleStarted: '2015',
      contentLifeCycleEnded: '2022',
      contentDuration: '48m',
      contentTagsList: ['Historical', 'Action', 'Drama', 'War', 'Adaptation'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageTwo.path,
      contentName: 'Inception',
      contentType: 'Movie',
      contentLifeCycleStarted: '2010',
      contentLifeCycleEnded: '2010',
      contentDuration: '2h 28m',
      contentTagsList: ['Sci-Fi', 'Thriller', 'Action', 'Mind-bending'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageThree.path,
      contentName: 'Breaking Bad',
      contentType: 'TV Series',
      contentLifeCycleStarted: '2008',
      contentLifeCycleEnded: '2013',
      contentDuration: '47m',
      contentTagsList: ['Crime', 'Drama', 'Thriller', 'Chemistry'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageFour.path,
      contentName: 'The Witcher',
      contentType: 'TV Series',
      contentLifeCycleStarted: '2019',
      contentLifeCycleEnded: '2023',
      contentDuration: '60m',
      contentTagsList: ['Fantasy', 'Action', 'Adventure', 'Monster'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageTwo.path,
      contentName: 'Parasite',
      contentType: 'Movie',
      contentLifeCycleStarted: '2019',
      contentLifeCycleEnded: '2019',
      contentDuration: '2h 12m',
      contentTagsList: ['Thriller', 'Comedy', 'Drama', 'Social'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageFour.path,
      contentName: 'The Crown',
      contentType: 'TV Series',
      contentLifeCycleStarted: '2016',
      contentLifeCycleEnded: '2023',
      contentDuration: '58m',
      contentTagsList: ['Historical', 'Drama', 'Biography', 'Royalty'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageThree.path,
      contentName: 'Dune',
      contentType: 'Movie',
      contentLifeCycleStarted: '2021',
      contentLifeCycleEnded: '2021',
      contentDuration: '2h 35m',
      contentTagsList: ['Sci-Fi', 'Adventure', 'Drama', 'Epic'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageOne.path,
      contentName: 'Friends',
      contentType: 'TV Series',
      contentLifeCycleStarted: '1994',
      contentLifeCycleEnded: '2004',
      contentDuration: '22m',
      contentTagsList: ['Comedy', 'Romance', 'Sitcom', 'Friendship'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageTwo.path,
      contentName: 'The Dark Knight',
      contentType: 'Movie',
      contentLifeCycleStarted: '2008',
      contentLifeCycleEnded: '2008',
      contentDuration: '2h 32m',
      contentTagsList: ['Action', 'Crime', 'Drama', 'Superhero'],
    ),
    ContentCardModel(
      imageUrl: Assets.images.onboardingBodyImageThree.path,
      contentName: 'Stranger Things',
      contentType: 'TV Series',
      contentLifeCycleStarted: '2016',
      contentLifeCycleEnded: '2025',
      contentDuration: '51m',
      contentTagsList: ['Sci-Fi', 'Horror', 'Drama', '80s', 'Mystery'],
    ),
  ];
}
