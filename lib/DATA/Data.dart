import 'package:facebook_clone/MODELS/Post.dart';

class Data {
  static List<Post> dataList = [
    Post(
      userName: '',
      hour: '',
      imgPath: 'assets/post/1.jpg',
      postImage: '',
      isCreate: true,
    ),
    Post(
      userName: 'Katherine Langford',
      hour: '2h',
      imgPath: 'assets/profiles/1.png',
      postImage: 'assets/post/1.jpg',
      isCreate: false,
    ),
    Post(
      userName: 'Johnny Depp',
      hour: '8h',
      imgPath: 'assets/profiles/2.png',
      postImage: 'assets/post/2.jpg',
      isCreate: false,
    ),
    Post(
      userName: 'Vijay Deverkonda',
      hour: '1h',
      imgPath: 'assets/profiles/3.png',
      postImage: 'assets/post/3.jpg',
      isCreate: false,
    ),
    Post(
      userName: 'Christian Bale',
      hour: '1min',
      imgPath: 'assets/profiles/4.png',
      postImage: 'assets/post/4.jpg',
      isCreate: false,
    ),
    Post(
      userName: 'Robert Browney Jr',
      hour: '35min',
      imgPath: 'assets/profiles/5.png',
      postImage: 'assets/post/5.jpg',
      isCreate: false,
    ),
  ];
}
