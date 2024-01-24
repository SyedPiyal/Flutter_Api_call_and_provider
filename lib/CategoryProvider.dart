import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'CategoryData.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CategoryProvider extends ChangeNotifier{
  List<CategoryData> _categoryData = [];
  
  Future<List<CategoryData>> getCategory() async {
    var url = Uri.parse("https://api.escuelajs.co/api/v1/categories");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      dynamic jsonResponse = jsonDecode(response.body);
      _categoryData = List<CategoryData>.from(jsonResponse.map((data) => CategoryData.fromJson(data))).toList();
    }
    else {
      return [];
    }
    notifyListeners();

    return _categoryData;
  }
  
}