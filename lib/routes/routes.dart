import 'package:flutter/cupertino.dart';

import '../screens/authentication_screen.dart';
import '../screens/chat_list.dart';
import '../screens/comment_reply.dart';
import '../screens/group_chat.dart';
import '../screens/group_vedio.dart';
import '../screens/post_feed.dart';
import '../screens/post_feed1.dart';
import '../screens/splash.dart';

class Routes {
  static const postFeed1 = '/PostFeed1';
  static const postFeed = '/PostFeed';
  static const chatList = '/ChatList';
  static const commentReply = '/CommentReply';
  static const groupChat = '/GroupChat';
  static const groupVedioCall = '/GroupVedioCall';
  static const authentications = 'Authentication ';

  static Map<String, Widget Function(BuildContext)> routes(context) => {
        '/': (context) => const SplasScreen(),
        postFeed1: (context) => PostFeed1(),
        authentications: (context) => Authentication(),
        postFeed: (context) => PostFeedScreen(),
        chatList: (context) => ChatListScreen(),
        groupChat: (context) => const GroupChatScreen(),
        commentReply: (context) => CommentReplyScreen(),
        groupVedioCall: (context) => GroupVedioCallScreen(),
      };
}
