import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_cask/collection/data/models/bottle.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CollectionBottlesCubit extends Cubit<List<Bottle>> {
  CollectionBottlesCubit() : super([]);

  Future<void> fetchCollectionBottles() async {
    final bool hasInternet = !(await (Connectivity().checkConnectivity())).contains(ConnectivityResult.none);

    debugPrint('hasInternet: $hasInternet');

    if (hasInternet) {
      try {
        final jsonString = await rootBundle.loadString('assets/data/collection_bottles.json');
        final jsonList = json.decode(jsonString) as List<dynamic>;
        final collectionBottles = jsonList.map((json) => Bottle.fromJson(json)).toList();

        emit(collectionBottles);

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('collectionBottles', jsonString);
      } catch (e, s) {
        throw Exception('Failed to load Bottles from assets:\n$e\n$s');
      }
    } else {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString('collectionBottles');

      if (jsonString != null) {
        final jsonList = json.decode(jsonString) as List<dynamic>;
        final collectionBottles = jsonList.map((json) => Bottle.fromJson(json)).toList();

        emit(collectionBottles);
      }
    }
  }
}
