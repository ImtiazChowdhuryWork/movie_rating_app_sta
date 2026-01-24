class ContentCardModel {
  final String imageUrl;
  final String contentName;
  final String contentType;
  final String contentLifeCycleStarted;
  final String contentLifeCycleEnded;
  final String contentDuration;
  final List<String> contentTagsList;

  ContentCardModel({
    required this.imageUrl,
    required this.contentName,
    required this.contentType,
    required this.contentLifeCycleStarted,
    required this.contentLifeCycleEnded,
    required this.contentDuration,
    required this.contentTagsList,
  });
}
