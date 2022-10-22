import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'i_home_provider.dart';

class HomeLocalDataProvider extends GetConnect implements IHomeProvider {
  @override
  Future<String> getTasks(String path) async {
    return rootBundle.loadString(path);
  }
}
