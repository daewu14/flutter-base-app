import 'dart:convert';
/// status : true
/// text : "Sign in"
/// token : "6ylmSD68EPh1xGDvFf8YlZrgISH7iu4p"

DataSplash dataSplashFromJson(String str) => DataSplash.fromJson(json.decode(str));
String dataSplashToJson(DataSplash data) => json.encode(data.toJson());
class DataSplash {
  DataSplash({
      bool? status, 
      String? text, 
      String? token,}){
    _status = status;
    _text = text;
    _token = token;
}

  DataSplash.fromJson(dynamic json) {
    _status = json['status'];
    _text = json['text'];
    _token = json['token'];
  }
  bool? _status;
  String? _text;
  String? _token;

  bool? get status => _status;
  String? get text => _text;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['text'] = _text;
    map['token'] = _token;
    return map;
  }

}