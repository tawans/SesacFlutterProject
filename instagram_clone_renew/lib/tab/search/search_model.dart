import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/post.dart';

class SearchModel {
  final Stream<QuerySnapshot<Post>> postStream = FirebaseFirestore.instance
      .collection('posts')
      .withConverter<Post>(
        fromFirestore: (snapshot, _) => Post.fromJson(snapshot.data()!),
        toFirestore: (post, _) => post.toJson(),
      )
      .snapshots();
}
