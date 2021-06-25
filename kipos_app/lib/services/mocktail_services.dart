import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kipos_app/models/mocktail_model.dart';

class MocktailServices {
  static Future<List<Mocktail>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/mocktail_data.json');
    final body = json.decode(data);

    return body.map<Mocktail>(Mocktail.fromJson).toList();
  }
}
