import 'package:base_knowledge/base/xx_base.dart';
import '../base/xx_base.dart';
export '../base/xx_base.dart';

/// createdby Daewu Bintara
/// Monday, 20/12/21 23:22
/// Enjoy coding ☕

class ResParse<T> {
  final bool? status;
  final T? data;

  ResParse({this.status = false, this.data});
}


/// You must call 'await init()' first before fetch your API
abstract class MainRepository<T> extends Api{

  Response? rs;
  T? data;

  /// Final result
  Rsp<T> get result {
    debugLog("Response", "${rs?.data ?? "Empty Response"}");
    return Rsp<T>(
        response: rs!,
        data: data!
    );
  }

  /// Multipartform data reason
  FormData? _formData;

  /// As a data or Query parameter
  Map<String, dynamic>? _params;

  /// Getter of params [Map]
  Map<String, dynamic>? get getParams => _params;

  /// Getter of [FormData]
  FormData? get getFormData => _formData;

  Future<Rsp<T>> fetch() async {
    return result;
  }

  /// To set params
  /// required [Map]
  /// return this [Class]
  MainRepository<T> setParams(Map<String, dynamic> params) {
    debugLog("Params", params.toString());
    _params = params;
    return this;
  }

  /// To set params
  /// required [FormData]
  /// return this [Class]
  MainRepository<T> setFormData(FormData formData) {
    _formData = formData;
    return this;
  }

  /// To parse json from api to the model [T]
  Future tryParse(String ep, Function method) async {
    debugLog("Request", call.options.baseUrl+ep);
    try {
      method();
    } catch (e) {
      print("Error Parse : "+e.toString());
    }
  }

  /// call this method only on your test case
  MainRepository<T> mockApiInit() {
    mockInit();
    return this;
  }
}