part of '../xx_base.dart';
/// createdby Daewu Bintara
/// Monday, 20/12/21 22:55
/// Enjoy coding ☕

class Api {
  static final String _baseUrl = MyConfig.BASE_URL;
  static const String _apiVersionName = "v2/";
  static const String _apiName = "api/";
  static final String urlToCall = "$_baseUrl$_apiName$_apiVersionName";
  static const int _connectionTimeOut = 15000;
  static const int _receiveTimeOut = 13000;
  final bool _isMultipart = false;
  bool _isMock = false;

  final Dio _call = Dio();

  /// call this method only on your test case
  void mockInit() {
    _isMock = true;
  }

  /// Init to Instantiating.
  /// set all base [Header].
  /// set all base
  Future<bool> init() async {

    print("mocked : $_isMock}");

    _call.options.baseUrl = urlToCall;
    _call.options.connectTimeout = _connectionTimeOut;
    _call.options.receiveTimeout = _receiveTimeOut;
    _call.options.sendTimeout = _connectionTimeOut;

    var deviceId = _isMock ? "mocked:123456" : await MyInfo().deviceID();
    var deviceName = _isMock ? "mocked:name_device" : await MyInfo().deviceName();
    var deviceModel = _isMock ? "mocked:model_device" : await MyInfo().deviceModel();
    var deviceSystemVersion = _isMock ? "30" : await MyInfo().deviceSystemVersion();
    // var langCode = MyInfo().langCode();
    var langCode = "id";

    _call.options.headers['content-type'] = "application/x-www-form-urlencoded";
    if (!_isMultipart) {
      _call.options.headers['Accept'] = "application/json";
      _call.options.headers['accept'] = "application/json";
    }

    if (!_isMock) {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      _call.options.headers['app-version'] = packageInfo.buildNumber;
      _call.options.headers['app-version-name'] = packageInfo.version;
      _call.options.headers['platform'] = Platform.operatingSystem;
      _call.options.headers['operation-system'] = Platform.operatingSystem;
    } else {
      _call.options.headers['app-version'] = 100;
      _call.options.headers['app-version-name'] = "3.0.0";
      _call.options.headers['platform'] = "android";
      _call.options.headers['operation-system'] = "android";
    }

    _call.options.headers['device-id'] = deviceId;
    _call.options.headers['lang'] = langCode;
    _call.options.headers['device-name'] = deviceName;
    _call.options.headers['device-model'] = deviceModel;
    _call.options.headers['device-system-version'] = deviceSystemVersion;

    if (!_isMock){
      final pref = GetStorage();
      String token = pref.read(MyConfig.TOKEN_STRING_KEY) ?? "";
      if(token.isNotEmpty) _call.options.headers['token'] = token;
    }

    debugLog("Header", _call.options.headers.toString());
    return true;
  }

  /// Getter call
  Dio get call => _call;

}