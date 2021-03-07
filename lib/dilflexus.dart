
import 'dart:async';

import 'package:flutter/services.dart';

class Dilflexus {
  static const MethodChannel _channel =
      const MethodChannel('dilflexus');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
