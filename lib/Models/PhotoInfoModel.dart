class PhotoInfoModel {
  final String thumbnailUrl;
  final String url;
  final String title;
  PhotoInfoModel._({
    this.title,
    this.thumbnailUrl,
    this.url,
  });

  factory PhotoInfoModel.fromJson(Map<String, dynamic> json) {
    return PhotoInfoModel._(
      thumbnailUrl: json['thumbnailUrl'],
      title: json['title'],
      url: json['url'],
    );
  }
}
