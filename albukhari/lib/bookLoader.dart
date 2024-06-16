import 'package:flutter/services.dart';
import 'dart:convert';
class BookLoader {
  static Future<Map<dynamic,dynamic>> Load() async{
    var labels={};
    try {
      var data = await rootBundle.loadString('assets/book.json');
      labels= jsonDecode(data);
    } catch (error) {
      print("Error loading book file: $error");
      labels= {};
    }
  return labels;
  }
}