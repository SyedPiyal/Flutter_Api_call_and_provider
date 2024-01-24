import 'dart:convert';

import 'package:e_commerce/StoreData.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class StoreDataProvider extends ChangeNotifier{
  List<StoreData> _storeData = [];


  Future<List<StoreData>> getStoreData() async {
    var url = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      dynamic jsonResponse = jsonDecode(response.body);
      _storeData = List<StoreData>.from(jsonResponse.map((data)=> StoreData.fromJson(data))).toList();
    } else {
      return [];
    }
    notifyListeners();

    return _storeData;

  }
}