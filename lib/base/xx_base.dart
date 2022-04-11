/// createdby Daewu Bintara
/// Monday, 20/12/21 23:02
/// Enjoy coding ☕
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:package_info/package_info.dart';
import 'dart:io';
import 'package:device_info/device_info.dart';
export 'package:dio/dio.dart';

part 'my_config.dart';
part 'my_info.dart';
part 'service/api.dart';

// ignore: non_constant_identifier_names
void debugLog(String TAG, String message) {
  if (kDebugMode) log("$TAG => ${message.toString()}", name: MyConfig.APP_NAME);
}

class Rsp<T> {
  final Response response;
  final T data;
  Rsp({required this.response, required  this.data});
}