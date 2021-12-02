import 'dart:core';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TelegramModel extends ChangeNotifier {
  final List<String> _users = [
    "Petro:",
    "Ivan:",
    "Worker:",
    "Incognito:",
    "Admin:",
    "Stas:",
    "Creator:",
    "Incognito:",
    "Petro:",
    "Ivan:",
    "Worker:",
    "Incognito:",
    "Admin:",
    "Stas:",
    "Creator:",
    "Incognito:"
  ];
  final List<String> _messages = [
    "Повідомлення від Петра",
    "dlfsjdslfj;sdfjsdkfjdslf;j",
    "I`ve done my work",
    "Secret message",
    "configuration",
    "dQqqq",
    "Chat has been created",
    "Secret message",
    "Повідомлення від Петра",
    "dlfsjdslfj;sdfjsdkfjdslf;j",
    "I`ve done my work",
    "Secret message",
    "configuration",
    "dQqqq",
    "Chat has been created",
    "Secret message"
  ];
  final List<String> _times = [
    "10:43",
    "10:41",
    "10:39",
    "10:37",
    "10:35",
    "10:33",
    "10:31",
    "10:29",
    "10:27",
    "10:25",
    "10:23",
    "10:21",
    "10:19",
    "10:17",
    "10:15",
    "10:09",
  ];

  void addMessage(String user, String message, int id) {
    _users[id] = user;
    _messages[id] = message;
    final now = new DateTime.now();
    String time = now.hour.toString() + ":" + now.day.toString();
    _times[id] = time;
    print(_messages);
    notifyListeners();
  }

  String getUser(int id) {
    return _users[id];
  }

  String getMessage(int id) {
    return _messages[id];
  }

  String getTime(int id) {
    return _times[id];
  }
}
