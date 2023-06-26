import 'dart:io';

import 'package:flutter/cupertino.dart';

class ChatUsers {
  String name;
  String messageText;
  ImageProvider imageURL;
  String time;
  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imageURL,
      required this.time});
}
