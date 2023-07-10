import 'dart:convert';

class Photo {
  final int id;
  final String pageURL;
  final String type;
  final String tags;
  final String previewURL;
  final int previewWidth;
  final int previewHeight;
  final String webformatURL;
  final int webformatWidth;
  final int webformatHeight;
  final String largeImageURL;
  final int imageWidth;
  final int imageHeight;
  final int imageSize;
  final int views;
  final int downloads;
  final int collections;
  final int likes;
  final int comments;
  final int user_id;
  final String user;
  final String userImageURL;
  Photo({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tags,
    required this.previewURL,
    required this.previewWidth,
    required this.previewHeight,
    required this.webformatURL,
    required this.webformatWidth,
    required this.webformatHeight,
    required this.largeImageURL,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageSize,
    required this.views,
    required this.downloads,
    required this.collections,
    required this.likes,
    required this.comments,
    required this.user_id,
    required this.user,
    required this.userImageURL,
  });

  Photo copyWith({
    int? id,
    String? pageURL,
    String? type,
    String? tags,
    String? previewURL,
    int? previewWidth,
    int? previewHeight,
    String? webformatURL,
    int? webformatWidth,
    int? webformatHeight,
    String? largeImageURL,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? collections,
    int? likes,
    int? comments,
    int? user_id,
    String? user,
    String? userImageURL,
  }) {
    return Photo(
      id: id ?? this.id,
      pageURL: pageURL ?? this.pageURL,
      type: type ?? this.type,
      tags: tags ?? this.tags,
      previewURL: previewURL ?? this.previewURL,
      previewWidth: previewWidth ?? this.previewWidth,
      previewHeight: previewHeight ?? this.previewHeight,
      webformatURL: webformatURL ?? this.webformatURL,
      webformatWidth: webformatWidth ?? this.webformatWidth,
      webformatHeight: webformatHeight ?? this.webformatHeight,
      largeImageURL: largeImageURL ?? this.largeImageURL,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
      imageSize: imageSize ?? this.imageSize,
      views: views ?? this.views,
      downloads: downloads ?? this.downloads,
      collections: collections ?? this.collections,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      user_id: user_id ?? this.user_id,
      user: user ?? this.user,
      userImageURL: userImageURL ?? this.userImageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pageURL': pageURL,
      'type': type,
      'tags': tags,
      'previewURL': previewURL,
      'previewWidth': previewWidth,
      'previewHeight': previewHeight,
      'webformatURL': webformatURL,
      'webformatWidth': webformatWidth,
      'webformatHeight': webformatHeight,
      'largeImageURL': largeImageURL,
      'imageWidth': imageWidth,
      'imageHeight': imageHeight,
      'imageSize': imageSize,
      'views': views,
      'downloads': downloads,
      'collections': collections,
      'likes': likes,
      'comments': comments,
      'user_id': user_id,
      'user': user,
      'userImageURL': userImageURL,
    };
  }

  factory Photo.fromMap(Map<String, dynamic> map) {
    return Photo(
      id: map['id'].toInt() as int,
      pageURL: map['pageURL'] as String,
      type: map['type'] as String,
      tags: map['tags'] as String,
      previewURL: map['previewURL'] as String,
      previewWidth: map['previewWidth'].toInt() as int,
      previewHeight: map['previewHeight'].toInt() as int,
      webformatURL: map['webformatURL'] as String,
      webformatWidth: map['webformatWidth'].toInt() as int,
      webformatHeight: map['webformatHeight'].toInt() as int,
      largeImageURL: map['largeImageURL'] as String,
      imageWidth: map['imageWidth'].toInt() as int,
      imageHeight: map['imageHeight'].toInt() as int,
      imageSize: map['imageSize'].toInt() as int,
      views: map['views'].toInt() as int,
      downloads: map['downloads'].toInt() as int,
      collections: map['collections'].toInt() as int,
      likes: map['likes'].toInt() as int,
      comments: map['comments'].toInt() as int,
      user_id: map['user_id'].toInt() as int,
      user: map['user'] as String,
      userImageURL: map['userImageURL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Photo.fromJson(String source) =>
      Photo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Photo(id: $id, pageURL: $pageURL, type: $type, tags: $tags, previewURL: $previewURL, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatURL: $webformatURL, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageURL: $largeImageURL, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, collections: $collections, likes: $likes, comments: $comments, user_id: $user_id, user: $user, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(covariant Photo other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.pageURL == pageURL &&
        other.type == type &&
        other.tags == tags &&
        other.previewURL == previewURL &&
        other.previewWidth == previewWidth &&
        other.previewHeight == previewHeight &&
        other.webformatURL == webformatURL &&
        other.webformatWidth == webformatWidth &&
        other.webformatHeight == webformatHeight &&
        other.largeImageURL == largeImageURL &&
        other.imageWidth == imageWidth &&
        other.imageHeight == imageHeight &&
        other.imageSize == imageSize &&
        other.views == views &&
        other.downloads == downloads &&
        other.collections == collections &&
        other.likes == likes &&
        other.comments == comments &&
        other.user_id == user_id &&
        other.user == user &&
        other.userImageURL == userImageURL;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        pageURL.hashCode ^
        type.hashCode ^
        tags.hashCode ^
        previewURL.hashCode ^
        previewWidth.hashCode ^
        previewHeight.hashCode ^
        webformatURL.hashCode ^
        webformatWidth.hashCode ^
        webformatHeight.hashCode ^
        largeImageURL.hashCode ^
        imageWidth.hashCode ^
        imageHeight.hashCode ^
        imageSize.hashCode ^
        views.hashCode ^
        downloads.hashCode ^
        collections.hashCode ^
        likes.hashCode ^
        comments.hashCode ^
        user_id.hashCode ^
        user.hashCode ^
        userImageURL.hashCode;
  }
}
