// lib/services/data_service.dart

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataService {
  static Future<Map<String, dynamic>> fetchData() async {
    String jsonData = await rootBundle.loadString('assets/data.json');
    return jsonDecode(jsonData);
  }
}
